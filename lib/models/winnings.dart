import 'package:bid_right_mobile/models/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_host.dart';
import 'document.dart';
import 'property.dart';

part 'winnings.freezed.dart';

@freezed
class PastWinning with _$PastWinning {
  const PastWinning._();

  const factory PastWinning({
    required int lotId,
    required Address address,
    required num bidAmount,
    required DateTime createdDate,
    required String auctionHostName,
    required CaseStatus caseStatus,
    DateTime? depositReceivedDate,
    DateTime? paymentReceivedDate,
  }) = _PastWinning;

  bool get isDepositPaid => depositReceivedDate != null || isPaid;

  bool get isPaid => paymentReceivedDate != null;

  bool isLate([DateTime? now]) {
    now ??= DateTime.now();
    return caseStatus == CaseStatus.pendingTransaction &&
            (!isDepositPaid && depositDueTime(createdDate).isBefore(now)) ||
        (!isPaid && paymentDueTime(createdDate).isBefore(now));
  }
}

@freezed
class PastWinningDetail with _$PastWinningDetail {
  const PastWinningDetail._();

  const factory PastWinningDetail({
    required int lotId,
    required int auctionId,
    DateTime? depositReceivedDate,
    DateTime? paymentReceivedDate,
    @Default(CaseStatus.unknown)
    CaseStatus status,
    required int caseId,
    @Default('') String caseFirmName,
    @Default('') String caseFileNumber,
    @Default('') String caseNumber,
    @Default('') String caseDeedDelivery,
    @Default([]) List<Property> properties,
    required String bidderUserName,
    required WinnerDetail winner,
    required DateTime startedTime,
    required DateTime stoppedTime,
    required num openingPrice,
    required num requiredDown,
    required int numberOfBidders,
    required int numberOfBids,
    required int lotNumber,
      required DateTime createdDate,
    required AuctionHostCompany auctionHost,
    @Default([]) List<DocumentSummary> documents,
  }) = _PastWinningDetail;

  bool get isDepositPaid => depositReceivedDate != null || isPaid;

  bool get isPaid => paymentReceivedDate != null;

  num get totalAmount => winner.bidAmount;

  double get depositAmount =>
      double.parse((totalAmount * requiredDown / 100).toStringAsFixed(2));

  double get remainingAmount => totalAmount - depositAmount;

  bool isLate([DateTime? now]) {
    now ??= DateTime.now();
    return status == CaseStatus.pendingTransaction &&
        (!isDepositPaid && depositDueTime(createdDate).isBefore(now)) ||
        (!isPaid && paymentDueTime(createdDate).isBefore(now));
  }
}

@freezed
class WinnerDetail with _$WinnerDetail {
  const WinnerDetail._();

  const factory WinnerDetail({
    required int id,
    required String type,
    required String name,
    @Default('') String contactName,
    @Default('') String phoneNumber,
    required Address address,
    required num bidAmount,
    required num bidDownAmount,
    @Default('') String bidderFullName,
    @Default('') String paddleNumber,
  }) = _WinnerDetail;

}

@JsonEnum(fieldRename: FieldRename.pascal)
enum CaseStatus {
  pendingTransaction,
  completeTransaction,
  waitingCourtHouse,
  approved,
  deedReady,
  deedIssued,
  denied,
  paymentRefunded,
  unknown,
}

extension CaseStatusExt on CaseStatus {
  String get displayName {
    switch (this) {
      case CaseStatus.pendingTransaction:
        return 'Awaiting Payoff';
      case CaseStatus.completeTransaction:
        return 'Complete Transaction';
      case CaseStatus.waitingCourtHouse:
        return 'Waiting Court House';
      case CaseStatus.approved:
        return 'Approved';
      case CaseStatus.deedReady:
        return 'Deed Ready';
      case CaseStatus.deedIssued:
        return 'Deed Issued';
      case CaseStatus.denied:
        return 'Denied';
      case CaseStatus.paymentRefunded:
        return 'Payment Refunded';
      case CaseStatus.unknown:
        return 'Unknown';
    }
  }
}

DateTime depositDueTime(DateTime winTime) {
  return winTime.add(const Duration(hours: 2));
}

DateTime paymentDueTime(DateTime winTime) {
  final weekday = winTime.weekday;
  final int daysToPay;
  if (weekday < DateTime.friday) {
    // Monday-Thursday: pay next day
    daysToPay = 1;
  } else {
    // Friday-Sunday: pay on Monday
    daysToPay = 8 - weekday;
  }

  return DateTime(winTime.year, winTime.month, winTime.day + daysToPay, 14);
}
