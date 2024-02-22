import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/util/string_extension.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';

import 'phone_verify_cubit.dart';
import 'phone_verify_state.dart';

class PhoneVerificationDialog extends StatelessWidget {
  const PhoneVerificationDialog({
    Key? key,
    required this.delegate,
  }) : super(key: key);

  final PhoneVerifyDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: AlertDialog(
        title: const Text('Verify Phone Number'),
        content: PhoneVerification(
          onVerified: () => Navigator.of(context).pop(true),
          delegate: delegate,
        ),
      ),
    );
  }
}

/// Widget for all phone verification flows.
///
/// Requires a [PhoneVerifyCubit] provider ancestor.
class PhoneVerification extends StatelessWidget {
  const PhoneVerification({
    Key? key,
    required this.onVerified,
    required this.delegate,
  }) : super(key: key);

  final VoidCallback onVerified;
  final PhoneVerifyDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhoneVerifyCubit>(
      create: (context) => PhoneVerifyCubit(delegate: delegate),
      child: BlocConsumer<PhoneVerifyCubit, PhoneVerifyState>(
        listenWhen: (previous, current) {
          return previous.verificationState != current.verificationState;
        },
        listener: (context, state) {
          if (state.verificationState.isVerified) {
            onVerified();
          }
        },
        builder: (context, state) => state.token.map(
          uninitialized: (_) => const _PhoneVerifyInitial(),
          loading: (_) => const Center(
            heightFactor: 1,
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (_) => const _PhoneVerifyError(),
          loaded: (loaded) => _PhoneVerifyContent(
              token: loaded.value, isReloading: loaded.reloading),
        ),
      ),
    );
  }
}

class _PhoneVerifyInitial extends StatelessWidget {
  const _PhoneVerifyInitial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phone =
        context.select<PhoneVerifyCubit, String>((cubit) => cubit.phoneNumber);
    final formattedPhone = FlutterLibphonenumber()
        .formatNumberSync(
          phone,
          country: const CountryWithPhoneCode.us(),
          phoneNumberFormat: PhoneNumberFormat.national,
        )
        .nonBreaking();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('A verification code will be sent to $formattedPhone.'),
        ElevatedButton(
          onPressed: () => context.read<PhoneVerifyCubit>().fetchToken(),
          child: const Text('Send verification code'),
        ),
      ],
    );
  }
}

class _PhoneVerifyError extends StatelessWidget {
  const _PhoneVerifyError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Failed to send verification code'),
        ElevatedButton(
            onPressed: () => context.read<PhoneVerifyCubit>().fetchToken(),
            child: const Text('Try again')),
      ],
    );
  }
}

class _PhoneVerifyContent extends StatelessWidget {
  final PhoneVerificationToken token;
  final bool isReloading;

  const _PhoneVerifyContent({
    Key? key,
    required this.token,
    required this.isReloading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PhoneVerifyCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Please enter the verification code sent to your mobile number',
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CountdownTimer(
            endTime: token.expirationDate.millisecondsSinceEpoch,
            textStyle: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: BRColors.btGreen),
            endWidget: const Text('The verification code has expired'),
          ),
        ),
        ElevatedButton(
          onPressed: isReloading
              ? null
              : () => context.read<PhoneVerifyCubit>().fetchToken(),
          child: isReloading
              ? const SizedBox.square(
                  dimension: 16,
                  child: CircularProgressIndicator.adaptive(),
                )
              : const Text('Send again'),
        ),
        const SizedBox(height: 10),
        BRTextFormField(
          initialValue: cubit.state.verificationCode,
          labelText: 'Verification Code',
          errorText: cubit.state.verificationState.maybeWhen(
            error: (message) => message,
            orElse: () => null,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          onChanged: cubit.onVerificationCodeChanged,
        ),
        ElevatedButton(
          onPressed: cubit.state.isVerifying ? null : cubit.verifyToken,
          child: cubit.state.isVerifying
              ? const SizedBox.square(
                  dimension: 16,
                  child: CircularProgressIndicator.adaptive(),
                )
              : const Text('Verify'),
        )
      ],
    );
  }
}
