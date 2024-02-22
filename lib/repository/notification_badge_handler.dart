import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationBadgeHandler extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      updateBadge();
    }
  }

  void updateBadge() async {
    if (!Platform.isIOS) {
      return;
    }

    final notifications =
        await FlutterLocalNotificationsPlugin().getActiveNotifications();
    final count = notifications.length;

    if (count == 0) {
      await FlutterAppBadger.removeBadge();
    } else {
      await FlutterAppBadger.updateBadgeCount(count);
    }
  }
}
