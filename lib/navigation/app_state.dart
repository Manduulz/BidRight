import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

class Screens {
  Screens._(); // prevent IDE from suggesting instantiation

  static const splash = AppState.loggedOut(LoggedOutScreen.splash());
  static const onboarding = AppState.loggedOut(LoggedOutScreen.onboarding());
  static const login = AppState.loggedOut(LoggedOutScreen.login());
  static const loginNotImmediate =
      AppState.loggedOut(LoggedOutScreen.login(shouldLoginImmediately: false));
  static const register = AppState.loggedOut(LoggedOutScreen.register());
  static const home = AppState.loggedIn(LoggedInScreen.home());

  static AppState winning({required int lotId}) =>
      AppState.loggedIn(LoggedInScreen.winning(lotId: lotId));

  static AppState lotDetail({
    required int lotId,
    int? auctionId,
    int? propertyId,
  }) =>
      AppState.loggedIn(LoggedInScreen.lot(
        lotId: lotId,
        auctionId: auctionId,
        propertyId: propertyId,
      ));
}

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState.loggedOut(
    LoggedOutScreen screen, {
    @Default(LoggedInScreen.home()) LoggedInScreen nextScreen,
  }) = _LoggedOut;

  const factory AppState.loggedIn(LoggedInScreen screen) = _LoggedIn;

  AppState? get previous => when(
        loggedOut: (screen, nextScreen) {
          final innerPrevious = screen.previous;
          return innerPrevious == null
              ? null
              : AppState.loggedOut(innerPrevious, nextScreen: nextScreen);
        },
        loggedIn: (screen) {
          final innerPrevious = screen.previous;
          return innerPrevious == null
              ? null
              : AppState.loggedIn(innerPrevious);
        },
      );
}

@freezed
class LoggedOutScreen with _$LoggedOutScreen {
  const LoggedOutScreen._();

  const factory LoggedOutScreen.splash() = _Splash;

  const factory LoggedOutScreen.onboarding() = _Onboarding;

  const factory LoggedOutScreen.login({@Default(true) shouldLoginImmediately}) =
      _Login;

  const factory LoggedOutScreen.register() = _Register;

  LoggedOutScreen? get previous => map(
        splash: (_) => null,
        onboarding: (_) => null,
        login: (_) => const LoggedOutScreen.onboarding(),
        register: (_) => const LoggedOutScreen.onboarding(),
      );
}

@freezed
class LoggedInScreen with _$LoggedInScreen {
  const LoggedInScreen._();

  const factory LoggedInScreen.home() = _Home;

  const factory LoggedInScreen.lot({
    required int lotId,
    int? auctionId,
    int? propertyId,
  }) = _LotDetail;

  const factory LoggedInScreen.winning({required int lotId}) = _Winning;

  LoggedInScreen? get previous => map(
        home: (_) => null,
        lot: (_) => const LoggedInScreen.home(),
        winning: (_) => const LoggedInScreen.home(),
      );
}
