import 'package:bid_right_mobile/models/notification_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

part 'notification.g.dart';

//ignore_for_file: invalid_annotation_target

@freezed
class NotificationSettingDto with _$NotificationSettingDto {
  const NotificationSettingDto._();

  const factory NotificationSettingDto({
    @JsonKey(unknownEnumValue: NotificationEventType.other)
        required NotificationEventType notification,
    required bool isEmailNotifEnabled,
    required bool isMsgNotifEnabled,
    required bool isPushNotifEnabled,
    required bool isEmailNotifSubscribed,
    required bool isMsgNotifSubscribed,
    required bool isPushNotifSubscribed,
  }) = _NotificationSettingDto;

  factory NotificationSettingDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingDtoFromJson(json);

  NotificationSetting toNotificationSetting() => NotificationSetting(
        notification: notification,
        settings: {
          NotificationType.push: SingleNotificationSetting(
            isEnabled: isPushNotifEnabled,
            isSubscribed: isPushNotifSubscribed,
          ),
          NotificationType.text: SingleNotificationSetting(
            isEnabled: isMsgNotifEnabled,
            isSubscribed: isMsgNotifSubscribed,
          ),
          NotificationType.email: SingleNotificationSetting(
            isEnabled: isEmailNotifEnabled,
            isSubscribed: isEmailNotifSubscribed,
          ),
        }
      );
}
