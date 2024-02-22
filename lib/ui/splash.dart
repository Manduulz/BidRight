import 'dart:async';
import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _initAsync();
  }

  Future<void> _initAsync() async {
    final loginFuture = _tryLogin().catchError((_) => false);
    await Future.wait([
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive),
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]),
      Future.delayed(const Duration(seconds: 1))
    ]);

    _onLoginResult(await loginFuture);
  }

  Future<bool> _tryLogin() async {
    const result = true; // TODO await UserManager.instance.isLoggedIn();
    return result;
  }

  Future<void> _onLoginResult(bool success) async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    if (!mounted) {
      return;
    }

    context.read<NavigationCubit>().moveToScreen(Screens.onboarding);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.btDarkBlue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(64),
          child: Image.asset(Assets.logoWhite,
            width: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
