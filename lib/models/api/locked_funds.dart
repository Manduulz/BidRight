import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/locked_funds.dart' as m;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locked_funds.freezed.dart';

part 'locked_funds.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class LockedFundsSummaryDto with _$LockedFundsSummaryDto {
  const LockedFundsSummaryDto._();

  const factory LockedFundsSummaryDto({
    @Default([]) List<ActiveAuctionDto> activeAuctions,
    @Default([]) List<PendingWinningDto> pendingWinnings,
  }) = _LockedFundsSummaryDto;

  factory LockedFundsSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$LockedFundsSummaryDtoFromJson(json);

  m.LockedFundsSummary toModel() => m.LockedFundsSummary(
        activeAuctions: activeAuctions.map((e) => e.toModel()).toList(),
        pendingWinnings: pendingWinnings.map((e) => e.toModel()).toList(),
      );
}

@freezed
class ActiveAuctionDto with _$ActiveAuctionDto {
  const ActiveAuctionDto._();

  const factory ActiveAuctionDto({
    required num amount,
    required LotSummaryDto lot,
  }) = _ActiveAuctionDto;

  factory ActiveAuctionDto.fromJson(Map<String, dynamic> json) =>
      _$ActiveAuctionDtoFromJson(json);

  m.ActiveAuctionLockedFund toModel() => m.ActiveAuctionLockedFund(
        amount: amount,
        lot: lot.toModel(),
      );
}

@freezed
class PendingWinningDto with _$PendingWinningDto {
  const PendingWinningDto._();

  const factory PendingWinningDto({
    required num bidAmount,
    required num downAmount,
    required LotSummaryDto lot,
  }) = _PendingWinningDto;

  factory PendingWinningDto.fromJson(Map<String, dynamic> json) =>
      _$PendingWinningDtoFromJson(json);

  m.PendingWinningLockedFund toModel() => m.PendingWinningLockedFund(
        bidAmount: bidAmount,
        downAmount: downAmount,
        lot: lot.toModel(),
      );
}

@freezed
class LotSummaryDto with _$LotSummaryDto {
  const LotSummaryDto._();

  const factory LotSummaryDto(
      {required int id,
      required String streetLine1,
      String? streetLine2,
      required String city,
      String? county,
      required String stateCode,
      required String zipCode,
      String? countryCode}) = _LotSummaryDto;

  factory LotSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$LotSummaryDtoFromJson(json);

  m.LotSummary toModel() => m.LotSummary(
        id: id,
        address: Address(
          streetLine1: streetLine1,
          streetLine2: streetLine2,
          city: city,
          county: county,
          stateCode: stateCode,
          zip: zipCode,
          countryCode: countryCode,
        ),
      );
}
