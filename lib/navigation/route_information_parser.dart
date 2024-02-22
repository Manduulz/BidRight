import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'routes.dart' as routes;

class BidRightInformationParser extends RouteInformationParser<AppState> {
  const BidRightInformationParser();

  @override
  Future<AppState> parseRouteInformation(RouteInformation routeInformation) {
    final parts = routeInformation.uri.pathSegments;

    if (parts.isEmpty) {
      return SynchronousFuture(Screens.onboarding);
    }

    switch (parts.first) {
      case 'dashboard':
        return SynchronousFuture(Screens.home);
      case 'lots':
        return SynchronousFuture(AppState.loggedIn(
          LoggedInScreen.lot(
            lotId: int.parse(parts[1]),
            auctionId: (routeInformation.state as List)[0],
            propertyId: (routeInformation.state as List)[1],
          ),
        ));
      case 'winning':
        return SynchronousFuture(AppState.loggedIn(
          LoggedInScreen.winning(
            lotId: int.parse(parts[1]),
          ),
        ));
      case 'auctions':
        // from share link
        if (parts.length < 5) {
          break;
        }
        final lotId = int.tryParse(parts[4]);
        final auctionId = int.tryParse(parts[3]);
        if (lotId != null) {
          return SynchronousFuture(AppState.loggedIn(
              LoggedInScreen.lot(lotId: lotId, auctionId: auctionId)));
        }
    }

    return SynchronousFuture(
        const AppState.loggedOut(LoggedOutScreen.onboarding()));
  }

  @override
  RouteInformation? restoreRouteInformation(AppState configuration) {
    return configuration.when(
      loggedOut: (screen, _) => screen.when(
        splash: () => RouteInformation(uri: Uri.parse(routes.splash)),
        onboarding: () => RouteInformation(uri: Uri.parse(routes.firstpage)),
        login: (_) => RouteInformation(uri: Uri.parse(routes.loginpage)),
        register: () => RouteInformation(uri: Uri.parse(routes.register)),
      ),
      loggedIn: (screen) => screen.when(
        home: () => RouteInformation(uri: Uri.parse(routes.dashboard)),
        lot: (lotId, auctionId, propertyId) => RouteInformation(
          uri: Uri.parse('/lots/$lotId'),
          state: [auctionId, propertyId],
        ),
        winning: (lotId) => RouteInformation(
          uri: Uri.parse('/winning/$lotId'),
        ),
      ),
    );
  }
}
