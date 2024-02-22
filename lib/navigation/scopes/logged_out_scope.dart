import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/navigation/scopes/nav_builder.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/repository/app_preferences.dart';
import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:bid_right_mobile/ui/login/login_bloc.dart';
import 'package:bid_right_mobile/ui/login/login_screen.dart';
import 'package:bid_right_mobile/ui/onboarding.dart';
import 'package:bid_right_mobile/ui/register/register.dart';
import 'package:bid_right_mobile/ui/register/registration_cubit.dart';
import 'package:bid_right_mobile/ui/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class LoggedOutScope extends StatelessWidget {
  const LoggedOutScope({
    super.key,
    required this.screen,
    required this.navBuilder,
  });

  final LoggedOutScreen screen;
  final NavBuilder navBuilder;

  Page get splashPage => const MaterialPage(
        name: routes.splash,
        key: ValueKey('splash'),
        child: SplashScreen(),
      );

  Page get onboardingPage => const MaterialPage(
        name: routes.firstpage,
        key: ValueKey('onboarding'),
        child: OnboardingScreen(),
      );

  Page loginPage({required bool shouldLoginImmediately}) => MaterialPage(
        name: routes.loginpage,
        key: const ValueKey('login'),
        child: Provider<LoginBloc>(
          create: (context) => LoginBloc(
            userManager: context.read<UserManager>(),
            preferences: context.read<AppPreferences>(),
          ),
          dispose: (_, userManager) => userManager.dispose(),
          child: LoginScreen(shouldLogInImmediately: shouldLoginImmediately),
        ),
      );

  Page get registerPage => MaterialPage(
        name: routes.register,
        key: const ValueKey('register'),
        child: BlocProvider<RegistrationCubit>(
          create: (context) => RegistrationCubit(context.read<LoginApi>()),
          child: const RegistrationScreen(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return screen.when(
      splash: () => navBuilder([splashPage]),
      onboarding: () => navBuilder([onboardingPage]),
      login: (shouldLoginImmediately) => navBuilder([
        onboardingPage,
        loginPage(shouldLoginImmediately: shouldLoginImmediately),
      ]),
      register: () => navBuilder([onboardingPage, registerPage]),
    );
  }
}
