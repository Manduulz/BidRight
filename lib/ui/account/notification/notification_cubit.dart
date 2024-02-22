import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/notification_settings.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/ui/account/notification/notification_state.dart';
import 'package:bloc/bloc.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final AccountRepository _repository;

  final _updateMap = <FullNotificationType, _InFlightUpdate>{};

  NotificationCubit(this._repository) : super(const NotificationState());

  Future<void> init() => loadSettings();

  Future<void> loadSettings() async {
    emit(state.copyWith(settings: state.settings.withLoading()));
    final result = await _repository.loadNotificationSettings();
    emit(state.copyWith(settings: LoadingState.fromResult(result)));
  }

  Future<void> updateSetting({
    required NotificationEventType eventType,
    required NotificationType notificationType,
    required bool subscribe,
  }) async {
    final update = NotificationUpdate(
      type: FullNotificationType(eventType: eventType, type: notificationType),
      subscribed: subscribe,
    );
    emit(state.copyWith(
      settings: state.settings.mapValue((value) => value.map((e) {
            if (e.notification == eventType) {
              return e.copyWith(settings: {
                ...e.settings,
                notificationType: e.settings[notificationType]!
                    .copyWith(isSubscribed: subscribe),
              });
            } else {
              return e;
            }
          }).toList()),
    ));

    return _queueUpdate(update);
  }

  Future<void> _queueUpdate(NotificationUpdate update) async {
    Future<void> performUpdate() => _performUpdate(update);

    final type = update.type;
    final inFlightUpdate = _updateMap[type]?.copy() ??
        _InFlightUpdate(
            future: performUpdate(), isSubscribed: update.subscribed);

    _updateMap[type] = inFlightUpdate;
    await inFlightUpdate.future;

    if (!identical(inFlightUpdate, _updateMap[type])) {
      return;
    }

    if (inFlightUpdate.isSubscribed == update.subscribed) {
      _updateMap.remove(type);
      emit(state.copyWith(hasInFlightUpdates: _updateMap.isNotEmpty));
    } else {
      final action = performUpdate();
      _updateMap[type] =
          _InFlightUpdate(future: action, isSubscribed: update.subscribed);
      return action;
    }
  }

  Future<void> _performUpdate(NotificationUpdate update) async {
    emit(state.copyWith(hasInFlightUpdates: true));
    final result = await _repository.updateNotificationSubscription(
      type: update.type,
      isSubscribed: update.subscribed,
    );

    if (result is Failure) {
      emit(state.copyWith(
          failedUpdates: state.failedUpdates
              .where((element) => element.type != update.type)
              .followedBy([update]).toList()));
    }
  }

  Future<void> retryFailedUpdates() {
    final updates = state.failedUpdates;
    emit(state.copyWith(failedUpdates: const []));
    return Future.wait(updates.map(_queueUpdate));
  }
}

class _InFlightUpdate {
  /// The [Future] currently running.
  final Future<void> future;

  /// Whether the notification will be subscribed after [future] has been run.
  final bool isSubscribed;

  _InFlightUpdate({required this.future, required this.isSubscribed});

  _InFlightUpdate copy() =>
      _InFlightUpdate(future: future, isSubscribed: isSubscribed);
}
