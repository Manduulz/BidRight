import 'dart:async';

import 'package:bid_right_mobile/generated/livebidding.pbgrpc.dart' as grpc;
import 'package:bid_right_mobile/generated/google/protobuf/timestamp.pb.dart';
import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/auction_event.dart';
import 'package:bid_right_mobile/repository/api/base_url.dart';
import 'package:bid_right_mobile/repository/api/token_supplier.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc_web.dart';

class LiveBiddingRepository {
  final TokenSupplier _tokenSupplier;

  LiveBiddingRepository(this._tokenSupplier);

  Stream<AuctionEvent> events({
    required int lotId,
    DateTime? lastBidTime,
    // Sending the amount here violates CQS is prone to race conditions,
    // especially if the bidder has more than one phone.  However, it seems
    // impossible to convince the backend devs that this is a bad idea.
    required ValueGetter<SubscriptionInfo> infoSupplier,
  }) {
    final connection = LiveBiddingConnection(
        tokenSupplier: _tokenSupplier,
        lotId: lotId,
        infoSupplier: infoSupplier);
    connection.connect(lastBidTime: lastBidTime);
    return connection.events;
  }

  void dispose() {}
}

class LiveBiddingConnection {
  final TokenSupplier _tokenSupplier;
  final int lotId;
  final ValueGetter<SubscriptionInfo> _infoSupplier;
  DateTime? _lastBidTime;

  LiveBiddingConnection({
    required TokenSupplier tokenSupplier,
    required this.lotId,
    required ValueGetter<SubscriptionInfo> infoSupplier,
  })  : _infoSupplier = infoSupplier,
        _tokenSupplier = tokenSupplier;

  late final _eventController =
      StreamController<AuctionEvent>(onCancel: dispose);

  Stream<AuctionEvent> get events => _eventController.stream;

  ResponseStream<grpc.Auction>? _responseStream;

  static final _baseUrl = Uri(scheme: 'https', host: backendHost);

  late final _channel = GrpcWebClientChannel.xhr(_baseUrl);
  late final _client = grpc.AuctionSubscriptionGrpcServiceClient(_channel);

  Future<void> connect({DateTime? lastBidTime}) async {
    _responseStream?.cancel();

    final info = _infoSupplier();

    final request = grpc.SubscriptionRequest(lots: [
      grpc.SubscriptionRequestItem(
          id: Int64(lotId),
          amount: info.amount.toDouble(),
          lastBidDate: lastBidTime?.toTimestamp(),
          type: _parseType(info.type)),
    ]);
    final token = await _tokenSupplier.getToken();
    try {
      _responseStream = _client.subscribe(request,
          options: CallOptions(
              metadata: {'Authorization': "Bearer $token"},
              timeout: const Duration(hours: 1)));
    } catch (e) {
      e;
    }
    _responseStream!.listen(_onEvent, onError: _onError);
  }

  static grpc.SubscriptionRequestItem_Type _parseType(ParticipationType type) {
    switch (type) {
      case ParticipationType.remote:
        return grpc.SubscriptionRequestItem_Type.Online;
      case ParticipationType.inPerson:
        return grpc.SubscriptionRequestItem_Type.InPerson;
    }
  }

  void _onEvent(grpc.Auction event) {
    final mappedEvent = _mapGrpcEvent(event);
    if (mappedEvent != null) {
      _eventController.add(mappedEvent);
      if (mappedEvent is BidPlaced) {
        _lastBidTime = mappedEvent.bid.createdDate;
      }

      if (kDebugMode) {
        print(mappedEvent);
      }
    }
  }

  void _onError(Object error) {
    if (_eventController.isClosed) {
      return;
    }
    _eventController.add(AuctionDisconnected(lotId: lotId));
    if (error is! GrpcError) {
      _eventController.addError(error);
      return;
    }

    if (error.message == 'Missing trailers' ||
        error.code == StatusCode.deadlineExceeded) {
      connect(lastBidTime: _lastBidTime);
    }
  }

  AuctionEvent? _mapGrpcEvent(grpc.Auction event) {
    final lotUpdate = LotUpdate(
      lotId: event.lot.id.toInt(),
      startTime: event.lot.startedTime.toDateTimeNullable(),
      stopTime: event.lot.stopTime.toDateTimeNullable(),
      actualStopTime: event.lot.stoppedTime.toDateTimeNullable(),
      winningBid: _winningBid(event.lot.winner),
    );

    switch (event.event) {
      case grpc.Auction_Event.CONNECT:
        return AuctionEvent.connected(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.BID_PLACED:
        return AuctionEvent.bidPlaced(
          lotId: lotId,
          lotUpdate: lotUpdate,
          bid: event.bidder.toBid(),
        );
      case grpc.Auction_Event.BID_PRIOR:
        return AuctionEvent.pastBids(
          lotId: lotId,
          lotUpdate: lotUpdate,
          bids: [for (final bidder in event.priorBids) bidder.toBid()],
        );
      case grpc.Auction_Event.LOT_STARTED:
        return AuctionEvent.started(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.LOT_STOPPING:
        return AuctionEvent.stopping(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.STOPPING_CANCELLED:
        return AuctionEvent.stopCancelled(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.LOT_STOPPED:
        // TODO: winner
        return AuctionEvent.stopped(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.ERROR:
        return AuctionEvent.error(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.DISCONNECT:
        return AuctionEvent.connectionReset(lotId: lotId, lotUpdate: lotUpdate);
      case grpc.Auction_Event.KICK:
        return AuctionEvent.kicked(lotId: lotId, lotUpdate: lotUpdate);
      default:
        if (kDebugMode) {
          print('Unhandled event: ${event.event}');
          print(event);
        }
        return null;
    }
  }

  void dispose() {
    _channel.terminate();
    _eventController.close();
    _responseStream?.cancel();
  }
}

extension TimestampExt on Timestamp {
  DateTime? toDateTimeNullable() {
    if (seconds.isZero && nanos == 0) {
      return null;
    }

    return toDateTime();
  }
}

extension DateTimeExt on DateTime {
  Timestamp toTimestamp() {
    return Timestamp.fromDateTime(this);
  }
}

extension BidderExt on grpc.Bidder {
  Bid toBid() {
    return Bid(
      id: bid.id.toInt(),
      paddleNumber: paddleNumber,
      amount: bid.amount,
      createdDate: bid.createdDate.toDateTime(),
    );
  }
}

Bid? _winningBid(grpc.Winner winner) {
  if (winner.id.isZero) {
    return null;
  }

  return Bid(
    id: winner.bid.id.toInt(),
    paddleNumber: winner.paddleNumber,
    amount: winner.bid.amount,
    createdDate: winner.bid.createdDate.toDateTime(),
  );
}

/// Info needed because the backend gRPC endpoint has never
/// heard of command-query separation
class SubscriptionInfo {
  final num amount;
  final ParticipationType type;

  const SubscriptionInfo({required this.amount, required this.type});
}
