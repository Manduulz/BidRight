import 'dart:convert';

import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/navigation/route_information_parser.dart';
import 'package:bid_right_mobile/navigation/router_delegate.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/api/dio_provider.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/repository/api/resources_api.dart';
import 'package:bid_right_mobile/repository/app_preferences.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/connectivity.dart';
import 'package:bid_right_mobile/repository/filter_repository.dart';
import 'package:bid_right_mobile/repository/live_bid_repository.dart';
import 'package:bid_right_mobile/repository/login_persistence.dart';
import 'package:bid_right_mobile/repository/notification_badge_handler.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:bid_right_mobile/repository/user_session.dart';
import 'package:bid_right_mobile/ui/login/auth_delegate.dart';
import 'package:bid_right_mobile/ui/winnings/winnings_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

//---------------------------------------------------//

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  final phoneInit = FlutterLibphonenumber().init();
  final sharedPreferences = await SharedPreferences.getInstance();
  await phoneInit;

  final badgeHandler = NotificationBadgeHandler();
  badgeHandler.updateBadge();
  WidgetsBinding.instance.addObserver(badgeHandler);

  final navigationCubit = NavigationCubit();
  final firebaseMessage = await FirebaseMessaging.instance.getInitialMessage();
  if (firebaseMessage != null) {
    navigationCubit.handleNotification(firebaseMessage.data);
  }

  FirebaseMessaging.onMessageOpenedApp.listen((event) {
    navigationCubit.handleNotification(event.data);
  });

  await FlutterLocalNotificationsPlugin().initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ), onDidReceiveNotificationResponse: (details) {
    var data = jsonDecode(details.payload ?? 'null');
    if (data is Map<String, dynamic>) {
      navigationCubit.handleNotification(data);
    }
  });

  final otherNotification =
      await FlutterLocalNotificationsPlugin().getNotificationAppLaunchDetails();
  final response = otherNotification?.notificationResponse;
  if (response != null) {
    final json = jsonDecode(response.payload ?? 'null');
    if (json is Map<String, dynamic>) {
      navigationCubit.handleNotification(json);
    }
  }

  final dio = createDio();

  runApp(MultiProvider(
    providers: [
      Provider<ConnectivityNotifier>(
        create: (_) => FlutterConnectivityNotifier()..init(),
        dispose: (_, notifier) => notifier.dispose(),
      ),
      BlocProvider<NavigationCubit>.value(value: navigationCubit),
      Provider(create: (_) => LoginApi(dio)),
      Provider(create: (_) => ResourcesApi(dio)),
      Provider(create: (_) => AppPreferences(sharedPreferences)),
      Provider(
        create: (context) => UserManager(
          context.read<LoginApi>(),
          LoginPersistence(),
          FlutterLocalAuthDelegate(),
        ),
      ),
      SingleChildBuilder(
        builder: (context, child) => ValueListenableProvider.value(
          value: context.read<UserManager>().userSession,
          child: child,
        ),
      ),
      ProxyProvider0<AuctionRepository>(
        update: (context, __) => context.watch<UserSession>().auctionRepository,
      ),
      ProxyProvider0<AccountRepository>(
        update: (context, __) => context.watch<UserSession>().accountRepository,
      ),
      ProxyProvider0<FilterRepository>(
        update: (context, __) => context.watch<UserSession>().filterRepository,
      ),
      ProxyProvider0<PurchaseProfileRepository>(
        update: (context, _) =>
            context.watch<UserSession>().purchaseProfileRepository,
      ),
      ProxyProvider0<LiveBiddingRepository>(
        update: (context, _) =>
            context.watch<UserSession>().liveBiddingRepository,
      ),
      ProxyProvider0<WinningsCubit>(
        update: (context, old) {
          old?.close();
          return WinningsCubit(repository: context.watch<AuctionRepository>());
        },
        dispose: (context, cubit) => cubit.close(),
      ),
    ],
    child: const App(),
  ));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final analytics = FirebaseAnalytics.instance;

  late final delegate = BidRightDelegate(
    navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
    cubit: context.read(),
  );

  @override
  void dispose() {
    delegate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      color: BRColors.bgDarkBlue,
      title: 'BidRight',
      theme: Constants.theme,
      routeInformationParser: const BidRightInformationParser(),
      routerDelegate: delegate,
    );
  }
}
