import 'dart:async';

import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/navigation/scopes/logged_in_scope.dart';
import 'package:bid_right_mobile/navigation/scopes/logged_out_scope.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app_state.dart';
import 'routes.dart' as routes;

class BidRightDelegate extends RouterDelegate<AppState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppState> {
  BidRightDelegate({
    this.navigatorObservers = const [],
    required this.cubit,
  }) {
    _subscription = cubit.stream.listen((_) => notifyListeners());
  }

  final NavigationCubit cubit;

  late final StreamSubscription _subscription;

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  final _rootKey = GlobalKey();

  final _emptyFocus = FocusNode();

  final List<NavigatorObserver> navigatorObservers;

  @override
  AppState get currentConfiguration => cubit.state;

  @override
  Future<void> setNewRoutePath(AppState configuration) {
    cubit.moveToScreen(configuration);
    return SynchronousFuture(null);
  }

  bool popPage(Route route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }

    cubit.moveToPreviousScreen();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      key: _rootKey,
      focusNode: _emptyFocus,
      child: GestureDetector(
        onTap: () {
          if (!_emptyFocus.hasPrimaryFocus) {
            _emptyFocus.unfocus();
          }
        },
        child: currentConfiguration.when(
          loggedOut: (screen, _) => LoggedOutScope(
            screen: screen,
            navBuilder: _buildNavigator,
          ),
          loggedIn: (screen) => LoggedInScope(
            screen: screen,
            navBuilder: _buildNavigator,
          ),
        ),
      ),
    );
  }

  Widget _buildNavigator(Iterable<Page> pages) {
    return Navigator(
      key: navigatorKey,
      observers: navigatorObservers,
      onPopPage: popPage,
      onGenerateRoute: (settings) {
        final builder = routes.routes[settings.name];
        if (builder == null) {
          return null;
        }

        return MaterialPageRoute(
          settings: settings,
          builder: builder,
        );
      },
      pages: pages.toList(),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    _emptyFocus.dispose();
    super.dispose();
  }
}
