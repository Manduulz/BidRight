// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingDtoImpl _$$NotificationSettingDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingDtoImpl(
      notification: $enumDecode(
          _$NotificationEventTypeEnumMap, json['notification'],
          unknownValue: NotificationEventType.other),
      isEmailNotifEnabled: json['isEmailNotifEnabled'] as bool,
      isMsgNotifEnabled: json['isMsgNotifEnabled'] as bool,
      isPushNotifEnabled: json['isPushNotifEnabled'] as bool,
      isEmailNotifSubscribed: json['isEmailNotifSubscribed'] as bool,
      isMsgNotifSubscribed: json['isMsgNotifSubscribed'] as bool,
      isPushNotifSubscribed: json['isPushNotifSubscribed'] as bool,
    );

Map<String, dynamic> _$$NotificationSettingDtoImplToJson(
        _$NotificationSettingDtoImpl instance) =>
    <String, dynamic>{
      'notification': _$NotificationEventTypeEnumMap[instance.notification]!,
      'isEmailNotifEnabled': instance.isEmailNotifEnabled,
      'isMsgNotifEnabled': instance.isMsgNotifEnabled,
      'isPushNotifEnabled': instance.isPushNotifEnabled,
      'isEmailNotifSubscribed': instance.isEmailNotifSubscribed,
      'isMsgNotifSubscribed': instance.isMsgNotifSubscribed,
      'isPushNotifSubscribed': instance.isPushNotifSubscribed,
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
