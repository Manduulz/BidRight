import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';

abstract class ConnectivityNotifier {
  Stream<void> get connectivityEvents;

  void dispose() {}
}

class FlutterConnectivityNotifier
    with WidgetsBindingObserver
    implements ConnectivityNotifier {
  final _events = StreamController<void>.broadcast();

  @override
  Stream<void> get connectivityEvents => _events.stream;

  bool _isInitialized = false;
  StreamSubscription<void>? _subscription;

  void init() {
    if (_isInitialized) {
      return;
    }
    _isInitialized = true;

    WidgetsBinding.instance.addObserver(this);
    _subscription = Connectivity().onConnectivityChanged.listen((event) {
      if (event != ConnectivityResult.none) {
        _events.sink.add(null);
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      final connectivity = await Connectivity().checkConnectivity();
      if (connectivity != ConnectivityResult.none) {
        _events.sink.add(null);
      }
    }
  }

  @override
  void dispose() {
    if (!_isInitialized) {
      return;
    }
    _isInitialized = false;

    WidgetsBinding.instance.removeObserver(this);
    _subscription?.cancel();
    _subscription = null;
  }
}
