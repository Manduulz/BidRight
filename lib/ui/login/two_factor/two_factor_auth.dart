import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/ui/login/two_factor/two_factor_cubit.dart';
import 'package:bid_right_mobile/ui/login/two_factor/two_factor_state.dart';
import 'package:bid_right_mobile/ui/shared/login_card_screen.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TwoFactorScreen extends StatelessWidget {
  const TwoFactorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TwoFactorCubit, TwoFactorState>(
        builder: (context, state) {
      return WillPopScope(
        onWillPop: () async {
          return !context.read<TwoFactorCubit>().goBack();
        },
        child: LoginCardScreen(
          body: Column(
            children: [
              Text(
                'Two-factor authentication',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Divider(),
              _buildContent(state.currentMethod),
              if (state.currentMethod != TwoFactorMethod.sms)
                TextButton(
                    onPressed: () => context.read<TwoFactorCubit>().showPhone(),
                    child: const Text('Use phone instead'))
            ],
          ),
        ),
      );
    });
  }

  Widget _buildContent(TwoFactorMethod method) {
    switch (method) {
      case TwoFactorMethod.authenticator:
        return const _AuthenticatorContent();
      case TwoFactorMethod.sms:
        return Builder(builder: (context) {
          return PhoneVerification(
            onVerified: () =>
                context.read<NavigationCubit>().login(),
            delegate: context
                .read<TwoFactorCubit>()
                .createPhoneVerificationDelegate(),
          );
        });
    }
  }
}

class _AuthenticatorContent extends StatefulWidget {
  const _AuthenticatorContent({Key? key}) : super(key: key);

  @override
  State<_AuthenticatorContent> createState() => _AuthenticatorContentState();
}

class _AuthenticatorContentState extends State<_AuthenticatorContent> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Enter the number shown on your authenticator app'),
        const SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                maxLength: 6,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            const SizedBox(width: 8),
            BlocSelector<TwoFactorCubit, TwoFactorState, bool>(
              selector: (state) => state.isLoading,
              builder: (context, isLoading) {
                return ElevatedButton(
                  onPressed: isLoading ? null : _verifyCode,
                  child: const Text('Verify'),
                );
              },
            )
          ],
        )
      ],
    );
  }

  Future<void> _verifyCode() async {
    final error = await context
        .read<TwoFactorCubit>()
        .verifyAuthenticatorCode(_controller.text);

    if (!mounted) {
      return;
    }

    if (error == null) {
      context.read<NavigationCubit>().login();
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: BRColors.btRed, content: Text(error)));
  }
}

class TwoFactorArgs {
  const TwoFactorArgs({
    required this.refreshToken,
    required this.hasAuthenticator,
    required this.phone,
    required this.rememberMe,
  });

  final String refreshToken;
  final bool hasAuthenticator;
  final String phone;
  final bool rememberMe;
}
