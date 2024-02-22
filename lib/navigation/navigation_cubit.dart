import 'package:bloc/bloc.dart';

import 'app_state.dart';

class NavigationCubit extends Cubit<AppState> {
  NavigationCubit() : super(Screens.splash);

  void moveToScreen(AppState screen) {
    emit(
      screen.map(
        loggedIn: (screen) => screen,
        loggedOut: (screen) => state.map(
          loggedOut: (currentScreen) =>
              screen.copyWith(nextScreen: currentScreen.nextScreen),
          loggedIn: (_) => screen,
        ),
      ),
    );
  }

  void tryMoveToScreen(LoggedInScreen screen) {
    emit(
      state.map(
        loggedOut: (state) => state.copyWith(nextScreen: screen),
        loggedIn: (_) => AppState.loggedIn(screen),
      ),
    );
  }

  void moveToPreviousScreen() {
    final previous = state.previous;
    if (previous != null) {
      emit(previous);
    }
  }

  void login() {
    emit(
      state.map(
          loggedOut: (state) => AppState.loggedIn(state.nextScreen),
          loggedIn: (_) => Screens.home),
    );
  }

  void handleNotification(Map<String, dynamic> data) {
    final type = data['type'] as String?;
    final lotId = int.tryParse(data['lotId']);
    if (lotId == null || type == null) {
      return;
    }

    if (type.startsWith('RegisteredAuction')) {
      tryMoveToScreen(LoggedInScreen.lot(lotId: lotId));
    } else {
      tryMoveToScreen(LoggedInScreen.winning(lotId: lotId));
    }
  }
}
