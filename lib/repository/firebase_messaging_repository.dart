import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/utils.dart';

const channel = AndroidNotificationChannel(
  'br-firebase',
  'Notifications',
  importance: Importance.high,
);

class FirebaseMessagingRepository {
  final AccountRepository _repository;

  FirebaseMessagingRepository(this._repository);

  late final CompositeSubscription _compositeSubscription =
      CompositeSubscription();

  Future<void> init() async {
    FirebaseMessaging.instance.requestPermission();

    FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(alert: true);

    FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    final token = await FirebaseMessaging.instance.getToken();

    FirebaseMessaging.instance.onTokenRefresh
        .listen(_repository.updateFirebaseToken)
        .addTo(_compositeSubscription);

    FirebaseMessaging.onMessage
        .listen(_onMessage)
        .addTo(_compositeSubscription);

    if (token != null) {
      await _repository.updateFirebaseToken(token);
    }
  }

  void _onMessage(RemoteMessage message) {
    final notification = message.notification;
    final android = notification?.android;

    if (Platform.isAndroid && notification != null && android != null) {
      FlutterLocalNotificationsPlugin().show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            icon: android.smallIcon,
            importance: channel.importance,
          ),
        ),
        payload: jsonEncode(message.data),
      );
    }
  }

  void dispose() {
    _compositeSubscription.cancel();
  }
}
