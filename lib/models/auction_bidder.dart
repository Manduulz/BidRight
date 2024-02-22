import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_bidder.freezed.dart';

part 'auction_bidder.g.dart';

@freezed
class AuctionBidder with _$AuctionBidder {
  const AuctionBidder._();

  const factory AuctionBidder({
    required String paddleNumber,
    int? purchaseProfileId,
    ParticipationType? type,
  }) = _AuctionBidder;

  factory AuctionBidder.fromJson(Map<String, dynamic> json) =>
      _$AuctionBidderFromJson(json);
}

@freezed
class LotBidder with _$LotBidder {
  const LotBidder._();

  const factory LotBidder({
    num? amount,
    String? balanceType,
    DateTime? leftDate,
    DateTime? enteredDate,
  }) = _LotBidder;

  factory LotBidder.fromJson(Map<String, dynamic> json) =>
      _$LotBidderFromJson(json);

  bool get isJoined => enteredDate != null && leftDate == null;

  num get lockedAmount => isJoined ? (amount ?? 0) : 0;
}

@freezed
class Bid with _$Bid {
  const Bid._();

  const factory Bid({
    required int id,
    required String paddleNumber,
    required num amount,
    DateTime? createdDate,
  }) = _Bid;

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);
}

@JsonEnum(alwaysCreate: true)
enum ParticipationType {
  @JsonValue('Online')
  remote,
  @JsonValue('InPerson')
  inPerson,
}

extension ParticipationTypeExt on ParticipationType {
  String get typeName => _$ParticipationTypeEnumMap[this]!;
}
