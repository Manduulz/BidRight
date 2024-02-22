import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings.freezed.dart';
part 'notification_settings.g.dart';

//ignore_for_file: invalid_annotation_target

@freezed
class NotificationSetting with _$NotificationSetting {
  const NotificationSetting._();

  const factory NotificationSetting({
    @JsonKey(unknownEnumValue: NotificationEventType.other)
        required NotificationEventType notification,
    required Map<NotificationType, SingleNotificationSetting> settings,
  }) = _NotificationSetting;

}

@freezed
class SingleNotificationSetting with _$SingleNotificationSetting {
  const SingleNotificationSetting._();

  const factory SingleNotificationSetting({
    required bool isEnabled,
    required bool isSubscribed,
  }) = _SingleNotificationSetting;
}

@freezed
class FullNotificationType with _$FullNotificationType {
  const FullNotificationType._();

  const factory FullNotificationType({
    @JsonKey(name: 'notification') required NotificationEventType eventType,
    @JsonKey(name: 'notificationType') required NotificationType type,
  }) = _FullNotificationType;

  // This isn't directly needed, but Freezed won't
  // generate toJson with a fromJson factory.
  factory FullNotificationType.fromJson(Map<String, dynamic> json) => _$FullNotificationTypeFromJson(json);
}

@JsonEnum()
enum NotificationType {
  @JsonValue('SMS')
  text,
  @JsonValue('EMAIL')
  email,
  @JsonValue('PUSH')
  push,
}

@JsonEnum()
enum NotificationEventType {
  @JsonValue('Account_Deactivated')
  accountDeactivated,
  @JsonValue('CaseDeposit_Pending')
  caseDepositPending,
  @JsonValue('CasePayment_Pending')
  casePaymentPending,
  @JsonValue('BankAccount_Linked')
  bankAccountLinked,
  @JsonValue('BankAccount_NeedsVerification')
  bankAccountNeedsVerification,
  @JsonValue('BankAccount_Removed')
  bankAccountRemoved,
  @JsonValue('CaseDeed_Ready')
  caseDeedReady,
  @JsonValue('CaseDeed_Shipped')
  caseDeedShipped,
  @JsonValue('ContactUsRequest_Confirmation')
  contactUsRequestConfirmation,
  @JsonValue('PinnedAuction_Cancelled')
  pinnedAuctionCancelled,
  @JsonValue('PinnedAuction_Started')
  pinnedAuctionStarted,
  @JsonValue('PinnedAuction_StartingSoon')
  pinnedAuctionStartingSoon,
  @JsonValue('PurchaseProfile_Added')
  purchaseProfileAdded,
  @JsonValue('PurchaseProfile_Removed')
  purchaseProfileRemoved,
  other,
}
