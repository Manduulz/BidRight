// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullNotificationTypeImpl _$$FullNotificationTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$FullNotificationTypeImpl(
      eventType:
          $enumDecode(_$NotificationEventTypeEnumMap, json['notification']),
      type: $enumDecode(_$NotificationTypeEnumMap, json['notificationType']),
    );

Map<String, dynamic> _$$FullNotificationTypeImplToJson(
        _$FullNotificationTypeImpl instance) =>
    <String, dynamic>{
      'notification': _$NotificationEventTypeEnumMap[instance.eventType]!,
      'notificationType': _$NotificationTypeEnumMap[instance.type]!,
    };

const _$NotificationEventTypeEnumMap = {
  NotificationEventType.accountDeactivated: 'Account_Deactivated',
  NotificationEventType.caseDepositPending: 'CaseDeposit_Pending',
  NotificationEventType.casePaymentPending: 'CasePayment_Pending',
  NotificationEventType.bankAccountLinked: 'BankAccount_Linked',
  NotificationEventType.bankAccountNeedsVerification:
      'BankAccount_NeedsVerification',
  NotificationEventType.bankAccountRemoved: 'BankAccount_Removed',
  NotificationEventType.caseDeedReady: 'CaseDeed_Ready',
  NotificationEventType.caseDeedShipped: 'CaseDeed_Shipped',
  NotificationEventType.contactUsRequestConfirmation:
      'ContactUsRequest_Confirmation',
  NotificationEventType.pinnedAuctionCancelled: 'PinnedAuction_Cancelled',
  NotificationEventType.pinnedAuctionStarted: 'PinnedAuction_Started',
  NotificationEventType.pinnedAuctionStartingSoon: 'PinnedAuction_StartingSoon',
  NotificationEventType.purchaseProfileAdded: 'PurchaseProfile_Added',
  NotificationEventType.purchaseProfileRemoved: 'PurchaseProfile_Removed',
  NotificationEventType.other: 'other',
};

const _$NotificationTypeEnumMap = {
  NotificationType.text: 'SMS',
  NotificationType.email: 'EMAIL',
  NotificationType.push: 'PUSH',
};
