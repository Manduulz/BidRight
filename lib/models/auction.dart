import 'dart:math';

import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction.freezed.dart';

part 'auction.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class AuctionDetail with _$AuctionDetail {
  const AuctionDetail._();

  const factory AuctionDetail({
    required int id,
    required DateTime startTime,
    required DateTime stopTime,
    required bool isOpen,
    @JsonKey(unknownEnumValue: AuctionType.other) @Default(
        AuctionType.other) AuctionType type,
    @JsonKey(unknownEnumValue: AuctionStartType.other) @Default(
        AuctionStartType.other) AuctionStartType startType,
    @JsonKey(name: 'timeLeft') @Default(0) num extensionWindow,
    @JsonKey(name: 'extraTime') @Default(0) num extensionDuration,
    String? location,
    String? hostName,
    String? hostLogoUrl,
  }) = _AuctionDetail;

  factory AuctionDetail.fromJson(Map<String, dynamic> json) =>
      _$AuctionDetailFromJson(json);
}

@freezed
class AuctionDetailWithLot with _$AuctionDetailWithLot {
  const AuctionDetailWithLot._();

  const factory AuctionDetailWithLot({
    required AuctionDetail auction,
    required Lot lot,
    required LotBidState bidState,
    required num minBidIncrements,
  }) = _AuctionDetailWithLot;

  bool get isJoined => bidState.isJoined;

  List<Bid> get bids => bidState.bids;

  num get minimumBid {
    final latestBid = bids
        .map((e) => e.amount)
        .maxOrNull;
    return latestBid != null
        ? latestBid + minBidIncrements
        : (lot.startingBid ?? 0);
  }

  num get maximumBid {
    final requiredDown = lot.requiredDownPayment;
    if (requiredDown == null || requiredDown == 0) {
      return double.infinity;
    }

    final bidderAmount = bidState.lockedAmount;

    return (bidderAmount * 100 / requiredDown);
  }

  bool get isWinner {
    final winningBid = maxBy<Bid, num>(bids, (e) => e.amount);

    return winningBid != null &&
        winningBid.paddleNumber == bidState.bidder?.paddleNumber;
  }

  DateTime get realStopTime {
    final stopTime = lot.stopTime ?? auction.stopTime;
    if (bids.isEmpty || auction.extensionDuration <= 0) {
      return stopTime;
    }

    final lastBidTime = bids
        .map((e) => e.createdDate)
        .whereNotNull()
        .reduce((a, b) => a.isBefore(b) ? b : a);

    final windowStarted = stopTime
        .subtract(const Duration(minutes: 1) * auction.extensionWindow);
    final timeAfterWindowStarted = lastBidTime.difference(windowStarted);
    final extensionCount = max(
        0,
        (timeAfterWindowStarted.inMilliseconds /
            (auction.extensionDuration * 60000)));

    return stopTime.add(
        const Duration(minutes: 1) * auction.extensionDuration *
            extensionCount.ceil());
  }
}

@freezed
class LotBidState with _$LotBidState {
  const LotBidState._();

  const factory LotBidState({
    AuctionBidder? bidder,
    int? winnerBidId,
    required List<Bid> bids,
    required bool isJoined,
    @Default(0) num lockedAmount,
  }) = _LotBidState;

  Bid? get winningBid => maxBy(bids, (bid) => bid.amount);
}

@JsonEnum(fieldRename: FieldRename.pascal)
enum AuctionType {
  online,
  inPerson,
  hybrid,
  other,
}

@JsonEnum(fieldRename: FieldRename.pascal)
enum AuctionStartType {
  manual,
  auto,
  other,
}
