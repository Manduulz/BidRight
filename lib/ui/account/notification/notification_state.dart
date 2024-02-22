import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/notification_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const NotificationState._();

  const factory NotificationState({
    @Default(Uninitialized()) LoadingState<List<NotificationSetting>> settings,
    @Default(false) bool hasInFlightUpdates,
    @Default([]) List<NotificationUpdate> failedUpdates,
  }) = _NotificationState;
}

@freezed
class NotificationUpdate with _$NotificationUpdate {
  const NotificationUpdate._();

  const factory NotificationUpdate({
    required FullNotificationType type,
    required bool subscribed,
  }) = _NotificationUpdate;
}