import 'package:bid_right_mobile/models/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locked_funds.freezed.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class LockedFundsSummary with _$LockedFundsSummary {
  const LockedFundsSummary._();

  const factory LockedFundsSummary({
    @Default([]) List<ActiveAuctionLockedFund> activeAuctions,
    @Default([]) List<PendingWinningLockedFund> pendingWinnings,
  }) = _LockedFundsSummary;
}

@freezed
class ActiveAuctionLockedFund with _$ActiveAuctionLockedFund {
  const ActiveAuctionLockedFund._();

  const factory ActiveAuctionLockedFund({
    required num amount,
    required LotSummary lot,
  }) = _ActiveAuctionLockedFund;
}

@freezed
class PendingWinningLockedFund with _$PendingWinningLockedFund {
  const PendingWinningLockedFund._();

  const factory PendingWinningLockedFund({
    required num bidAmount,
    required num downAmount,
    required LotSummary lot,
  }) = _PendingWinningLockedFund;
}

@freezed
class LotSummary with _$LotSummary {
  const LotSummary._();

  const factory LotSummary(
      {required int id,
        required Address address}) = _LotSummary;
}
