import 'package:freezed_annotation/freezed_annotation.dart';

import 'property.dart';

part 'live_lot.freezed.dart';

@freezed
class LiveLot with _$LiveLot {
  const LiveLot._();

  const factory LiveLot({
    required int id,
    required int auctionId,
    DateTime? stopTime,
    required num currentBid,
    required bool hasBids,
    String? auctionHostName,
    String? auctionHostLogoUrl,
    required Property property,
    required int propertyCount,
  }) = _LiveLot;
}
