import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_event.freezed.dart';

@freezed
class AuctionEvent with _$AuctionEvent {
  const AuctionEvent._();

  const factory AuctionEvent.bidPlaced({
    required int lotId,
    LotUpdate? lotUpdate,
    required Bid bid,
  }) = BidPlaced;

  const factory AuctionEvent.pastBids({
    required int lotId,
    LotUpdate? lotUpdate,
    required List<Bid> bids,
  }) = PastBids;

  const factory AuctionEvent.connected({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionConnected;

  const factory AuctionEvent.disconnected({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionDisconnected;

  const factory AuctionEvent.started({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionStarted;

  const factory AuctionEvent.stopping({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionStopping;

  const factory AuctionEvent.stopCancelled({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionStopCancelled;

  const factory AuctionEvent.stopped({
    required int lotId,
    LotUpdate? lotUpdate,
    // TODO: winner
  }) = AuctionStopped;

  const factory AuctionEvent.error({
    required int lotId,
    LotUpdate? lotUpdate,
    String? message,
  }) = AuctionError;

  const factory AuctionEvent.connectionReset({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionConnectionReset;

  const factory AuctionEvent.kicked({
    required int lotId,
    LotUpdate? lotUpdate,
  }) = AuctionKicked;
}

@freezed
class LotUpdate with _$LotUpdate {
  const LotUpdate._();

  const factory LotUpdate({
    required int lotId,
    DateTime? startTime,
    DateTime? stopTime,
    DateTime? actualStopTime,
    Bid? winningBid,
  }) = _LotUpdate;
}
