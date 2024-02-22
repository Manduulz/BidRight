import 'dart:core';

import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:bid_right_mobile/ui/login/two_factor/two_factor_auth.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/ui/shared/login_card_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/ui/login/login_bloc.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/dialogs.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class LoginScreenParams {
  final bool shouldLogInImmediately;

  const LoginScreenParams({this.shouldLogInImmediately = true});
}

class LoginScreen extends StatefulWidget {
  final bool shouldLogInImmediately;

  const LoginScreen({Key? key, this.shouldLogInImmediately = true})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _emptyFocus = FocusNode();

  bool agreed = true;
  late bool _persistLogin;
  bool _passwordVisible = false;

  bool hasSavedCredentials = false;

  List<BiometricType> biometricTypes = const [];

  @override
  void initState() {
    super.initState();
    _initAsync();
    final bloc = context.read<LoginBloc>();
    _persistLogin = bloc.savedRememberMe;
    _userController.text = bloc.savedUsername ?? '';
  }

  Future<void> _initAsync() {
    return Future.wait([
      _checkSavedCredentials(),
      if (widget.shouldLogInImmediately) _biometricLogIn()
    ]);
  }

  Future<void> _checkSavedCredentials() async {
    final hasSavedCredentials =
        await context.read<LoginBloc>().hasSavedCredentials();
    if (mounted) {
      setState(() {
        this.hasSavedCredentials = hasSavedCredentials;
      });
    }
  }

  Future<void> _biometricLogIn() async {
    final authResult =
        await context.read<LoginBloc>().loginWithSavedCredentials();

    if (!mounted) return;

    switch (authResult) {
      case AuthResult.impossible:
        break;
      case AuthResult.unauthorized:
        break;
      case AuthResult.authorized:
        context.read<NavigationCubit>().login();
        break;
    }
  }

  //----------------------------------------------------
  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _emptyFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoginCardScreen(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: SvgPicture.asset(VectorAssets.logoColor, width: 240),
          ),
          const SizedBox(height: 10),
          // Instructional text
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  focusNode: _emailFocus,
                  onEditingComplete: () {
                    _passwordFocus.requestFocus();
                  },
                  controller: _userController,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                  ],
                  decoration: InputDecoration(
                    labelText: 'Username',
                    /* contentPadding: const EdgeInsets.symmetric(
                                              vertical: 10.0),*/
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                    filled: true,
                    fillColor: BRColors.bglightBlue,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: const BorderSide(
                        color: BRColors.bglightBlue,
                        width: 1.0,
                      ),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    if (hasSavedCredentials)
                      IconButton(
                          onPressed: _biometricLogIn,
                          icon: const Icon(Icons.fingerprint_outlined)),
                    Expanded(
                      child: TextFormField(
                        obscureText: !_passwordVisible,
                        keyboardType: _passwordVisible
                            ? TextInputType.visiblePassword
                            : null,
                        focusNode: _passwordFocus,
                        onEditingComplete: () {
                          _passwordFocus.unfocus();
                          _submitLoginAuth();
                        },
                        controller: _passwordController,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                        ],
                        decoration: InputDecoration(
                            labelText: 'Password',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            filled: true,
                            fillColor: BRColors.bglightBlue,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: const BorderSide(
                                color: BRColors.bglightBlue,
                                width: 1.0,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(_passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            )),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) => value!.length < 8
                            ? 'Minimum of 8 characters.'
                            : null,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => setState(() {
                    _persistLogin = !_persistLogin;
                  }),
                  child: AbsorbPointer(
                    child: Row(
                      children: [
                        Checkbox(
                            activeColor: BRColors.btGreen,
                            value: _persistLogin,
                            onChanged: (value) => setState(() {
                                  _persistLogin = value!;
                                })),
                        const Text(
                          'Remember me',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: BRColors.white,
                        backgroundColor: BRColors.btGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        textStyle: const TextStyle(fontSize: 14)),
                    onPressed: _submitLoginAuth,
                    child: const Text('Sign In'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2.0,
                  color: BRColors.btDarkBlue,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              child: const Text('Forgot password?'),
              onPressed: () {
                _showForgotPassword(_userController.text);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text.rich(
              TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: BRColors.trGray),
                text: "Don't have an account? ",
                children: [
                  TextSpan(
                      style: const TextStyle(color: BRColors.btDarkBlue),
                      text: 'Sign up.',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context
                              .read<NavigationCubit>()
                              .moveToScreen(Screens.register);
                        }),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _submitLoginAuth() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final loginResult = await context
        .read<LoginBloc>()
        .login(_userController.text, _passwordController.text, _persistLogin);

    if (!mounted) return;

    loginResult.map(
      success: (_) => context.read<NavigationCubit>().login(),
      needs2FA: (result) {
        Navigator.of(context).pushNamed(
          routes.login_2fa,
          arguments: TwoFactorArgs(
            refreshToken: result.credentials.refreshToken!,
            hasAuthenticator: result.hasAuthenticator,
            phone: result.phone,
            rememberMe: _persistLogin,
          ),
        );
      },
      badCredentials: (_) => _showError('Incorrect username or password'),
      connectionFailure: (_) => _showError('Error contacting server.'),
      otherError: (_) => _showError('Unknown error'),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  Future<void> _showForgotPassword(String username) async {
    final success = await showGeneralDialog<bool>(
            context: context,
            barrierColor: const Color(0x80000000),
            barrierDismissible: true,
            barrierLabel:
                MaterialLocalizations.of(context).modalBarrierDismissLabel,
            transitionDuration: const Duration(milliseconds: 250),
            transitionBuilder: animateFromTop,
            pageBuilder: (context, _, __) {
              return _ForgotPasswordDialog(initialUsername: username);
            }) ??
        false;

    if (mounted && success) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("An email will be sent with further instructions."),
      ));
    }
  }
}

class _ForgotPasswordDialog extends StatefulWidget {
  const _ForgotPasswordDialog({
    Key? key,
    required this.initialUsername,
  }) : super(key: key);

  final String initialUsername;

  @override
  State<_ForgotPasswordDialog> createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<_ForgotPasswordDialog> {
  late String username;
  String? errorMessage;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    username = widget.initialUsername;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      //  contentPadding: EdgeInsets.zero,

      titlePadding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
      title: const Text("Forgot Password",
          style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          )),
      //   backgroundColor: Theme.of(context).backgroundColor,
      content: SizedBox(
        width: 180.0,
        height: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SizedBox(height: 20.0,),
            const Text(
              "Enter your email and we will send you a link to reset your password.",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            // SizedBox(height: 20.0,),
            BRTextFormField(
              labelText: ' Email address',
              keyboardType: TextInputType.emailAddress,
              initialValue: username,
              autofillHints: const [],
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
              ],
              textInputAction: TextInputAction.next,
              onChanged: (value) => setState(() {
                username = value;
                errorMessage = null;
              }),
              validator: (value) =>
                  value == null || value.isEmpty ? 'Required' : null,
            ),
            ElevatedButton(
              onPressed: isLoading ? null : _submit,
              child: const Text("Submit request"),
            ),
            if (errorMessage != null)
              Text(
                errorMessage!,
                style: const TextStyle(color: BRColors.btRed),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    final api = context.read<LoginApi>();

    setState(() => isLoading = true);
    final result = await api.forgotPassword(username);
    if (!mounted) {
      return;
    }
    setState(() => isLoading = false);

    result.join(
      onSuccess: (_) {
        Navigator.of(context).pop(true);
      },
      onFailure: (_) {
        setState(() {
          errorMessage = 'Error resetting password';
        });
      },
    );
  }
}
