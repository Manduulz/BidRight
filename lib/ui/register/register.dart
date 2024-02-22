import 'dart:async';

import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/repository/api/base_url.dart';
import 'package:bid_right_mobile/ui/register/components/availability_icon.dart';
import 'package:bid_right_mobile/ui/register/registration_state.dart';
import 'package:bid_right_mobile/ui/shared/address_input/address_input.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/ui/register/registration_cubit.dart';
import 'package:bid_right_mobile/ui/shared/login_card_screen.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify.dart';
import 'package:bid_right_mobile/util/dates.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/registration_header.dart';

//-------------------------------

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final _phoneFocus = FocusNode();
  final _buttonKey = GlobalKey();

  final phoneController = MaskedTextController(mask: '(000) 000-0000');

  @override
  void initState() {
    super.initState();
    _phoneFocus.addListener(() {
      if (_phoneFocus.hasFocus) {
        _ensureButtonVisible();
      }
    });
  }

  Future<void> _ensureButtonVisible() async {
    await Future.delayed(const Duration(milliseconds: 250));
    return Scrollable.ensureVisible(
      _buttonKey.currentContext!,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _phoneFocus.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<RegistrationCubit>();
    final state = bloc.state;

    return LoginCardScreen(
      body: Form(
        key: _formKey,
        child: AutofillGroup(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RegistrationHeader(title: 'Personal Info', stepNumber: 1),
              const SizedBox(height: 20),
              BRTextFormField(
                key: const ValueKey('First name'),
                labelText: 'First name',
                initialValue: state.firstName,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.givenName],
                textInputAction: TextInputAction.next,
                onChanged: bloc.setFirstName,
                validator: (value) => value!.isEmpty ? "Required" : null,
              ),
              const SizedBox(height: 10),
              BRTextFormField(
                key: const ValueKey('Last name'),
                labelText: 'Last name',
                initialValue: state.lastName,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.familyName],
                textInputAction: TextInputAction.next,
                onChanged: bloc.setLastName,
                validator: (value) => value!.isEmpty ? "Required" : null,
              ),
              const SizedBox(height: 10),
              BRTextFormField(
                key: const ValueKey('email'),
                labelText: 'Email address',
                initialValue: state.email,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                ],
                textInputAction: TextInputAction.next,
                validator: (value) => !EmailValidator.validate(value!)
                    ? 'Invalid email address.'
                    : null,
                onChanged: bloc.setEmail,
                suffixIcon: AvailabilityIcon(
                  result: state.isEmailAvailable,
                  onRetry: bloc.checkEmailAvailability,
                ),
              ),
              const SizedBox(height: 10),
              BRTextFormField(
                key: const ValueKey('phone'),
                labelText: 'Phone number',
                controller: phoneController,
                focusNode: _phoneFocus,
                  // inputFormatters: [phoneFormatter],
                keyboardType: TextInputType.phone,
                autofillHints: const [AutofillHints.telephoneNumberNational],
                onChanged: bloc.setPhone,
                validator: (value) =>
                    value!.replaceAll(RegExp(r'\D'), '').length < 10
                        ? "Required"
                        : null,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                key: const ValueKey('dob'),
                onTap: _showDatePicker,
                child: InputDecorator(
                  decoration: (state.dateOfBirth == null
                          ? const InputDecoration()
                          : filledInputDecoration)
                      .copyWith(labelText: 'Date of birth'),
                  isEmpty: state.dateOfBirth == null,
                  child: state.dateOfBirth == null
                      ? const SizedBox(height: 10)
                      : Text(
                          DateFormat.yMd().format(state.dateOfBirth!),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: BRColors.trGray),
                    text: 'Have an account? ',
                    children: [
                      TextSpan(
                          style: const TextStyle(color: BRColors.btDarkBlue),
                          text: 'Sign in.',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context
                                  .read<NavigationCubit>()
                                  .moveToScreen(Screens.login);
                            }),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                key: _buttonKey,
                onPressed: _showNextScreen,
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showDatePicker() async {
    final lastValidDate = DateTime.now().minusYears(18);
    final firstDate = DateTime.utc(1900);

    final currentDate =
        context.read<RegistrationCubit>().state.dateOfBirth ?? firstDate;

    final result = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: firstDate,
      lastDate: lastValidDate,
      initialDatePickerMode: DatePickerMode.year,
      initialEntryMode: DatePickerEntryMode.input,
    );

    if (mounted && result != null) {
      context.read<RegistrationCubit>().setDateOfBirth(result);
    }
  }

  void _showNextScreen() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();

    final bloc = context.read<RegistrationCubit>();
    if (bloc.state.isEmailAvailable.valueOrNull != true) {
      return;
    }

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const RegistrationAddressScreen(),
      ),
    ));
  }
}

class RegistrationAddressScreen extends StatefulWidget {
  const RegistrationAddressScreen({super.key});

  @override
  State<RegistrationAddressScreen> createState() =>
      _RegistrationAddressScreenState();
}

class _RegistrationAddressScreenState extends State<RegistrationAddressScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<RegistrationCubit>();
    return LoginCardScreen(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const RegistrationHeader(title: 'Mailing Address', stepNumber: 2),
            const SizedBox(height: 20),
            AutofillGroup(
              child: AddressSection(
                address: cubit.state.address,
                delegate: cubit,
              ),
            ),
            ElevatedButton(
              onPressed: _showNextScreen,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }

  void _showNextScreen() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();

    final bloc = context.read<RegistrationCubit>();
    if (bloc.state.isEmailAvailable.valueOrNull != true) {
      return;
    }

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const RegistrationAccountScreen(),
      ),
    ));
  }
}

class RegistrationAccountScreen extends StatefulWidget {
  const RegistrationAccountScreen({super.key});

  @override
  State<RegistrationAccountScreen> createState() =>
      _RegistrationAccountScreenState();
}

class _RegistrationAccountScreenState extends State<RegistrationAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  bool agreed = true;
  bool _persistLogin = true;
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<RegistrationCubit>();

    return BlocConsumer<RegistrationCubit, RegistrationState>(
        listenWhen: (previous, current) =>
            previous.confirmPassword != current.confirmPassword,
        listener: (context, state) {
          if (state.confirmPassword.isEmpty) {
            _confirmPasswordController.clear();
          }
        },
        builder: (context, state) {
          return LoginCardScreen(
            body: Form(
              key: _formKey,
              child: AutofillGroup(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RegistrationHeader(
                        title: 'Login Info', stepNumber: 3),
                    const SizedBox(height: 20),
                    // NOTE: Tem: Does it need to be updating the bloc? - shouldn't it be local?
                    BRTextFormField(
                      labelText: 'Username',
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      autofillHints: const [AutofillHints.givenName],
                      textInputAction: TextInputAction.next,
                      onChanged: (value) => bloc.setUsername(value),
                      validator: (value) => value!.isEmpty ? "Required" : null,
                      suffixIcon: AvailabilityIcon(
                        result: state.isUsernameAvailable,
                        onRetry: bloc.checkUsernameAvailability,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: !state.isPasswordVisible,
                      keyboardType: state.isPasswordVisible
                          ? TextInputType.visiblePassword
                          : null,
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                      ],
                      decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: BRColors.bglightBlue,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const BorderSide(
                              color: BRColors.bglightBlue,
                              width: 1.0,
                            ),
                          ),
                          suffixIcon: Material(
                            type: MaterialType.transparency,
                            child: IconButton(
                              icon: Icon(state.isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () => bloc
                                  .setPasswordVisible(!state.isPasswordVisible),
                            ),
                          )),
                      onChanged: bloc.setPassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';
                        }
                        final errors = [
                          if (value.length < 6) 'Minimum 6 characters',
                          if (!value.contains(RegExp(r'\d')))
                            'At least one digit required',
                          if (!value.contains(RegExp(r'[A-Z]')))
                            'At least one uppercase letter required',
                          if (!value.contains(RegExp(r'[a-z]')))
                            'At least one lowercase letter required',
                        ];
                        if (errors.isEmpty) {
                          return null;
                        }

                        return errors.join('\n');
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        obscureText: !state.isPasswordVisible,
                        keyboardType: state.isPasswordVisible
                            ? TextInputType.visiblePassword
                            : null,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                        ],
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          labelText: 'Confirm password',
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
                        onChanged: bloc.setConfirmPassword,
                        validator: (value) => value != bloc.state.password
                            ? 'Passwords do not match.'
                            : null,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: BRColors.btGreen,
                            value: _persistLogin,
                            onChanged: (value) => setState(() {
                                  _persistLogin = value!;
                                })),
                        Expanded(child: Text.rich(_termsText()))
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _showNextScreen,
                        child: const Text(
                          "Sign up",
                          style:
                              TextStyle(fontSize: 14.0, color: BRColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future<void> _showNextScreen() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final bloc = context.read<RegistrationCubit>();
    if (bloc.state.isUsernameAvailable.valueOrNull != true) {
      // username not known to be available
      return;
    }

    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return BlocProvider.value(
        value: bloc,
        child: const RegistrationPhoneVerifyScreen(),
      );
    }));
  }
}

class RegistrationPhoneVerifyScreen extends StatefulWidget {
  const RegistrationPhoneVerifyScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationPhoneVerifyScreen> createState() =>
      _RegistrationPhoneVerifyScreenState();
}

class _RegistrationPhoneVerifyScreenState
    extends State<RegistrationPhoneVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO
    return BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
      return LoginCardScreen(
        body: Column(
          children: [
            const RegistrationHeader(
                title: 'Phone Verification', stepNumber: 4),
            PhoneVerification(
              onVerified: _nextScreen,
              delegate:
                  context.read<RegistrationCubit>().phoneVerificationDelegate(),
            ),
          ],
        ),
      );
    });
  }

  void _nextScreen() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const RegistrationCompleteScreen()));
  }
}

class RegistrationCompleteScreen extends StatelessWidget {
  const RegistrationCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) =>
          context.read<NavigationCubit>().moveToScreen(Screens.login),
      child: LoginCardScreen(
        body: AutofillGroup(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RegistrationHeader(title: 'Signed up', stepNumber: 5),
                // Container(
                //   alignment: Alignment.center,
                //   // width: 146.0,
                //   // height: 90.0,
                //   child: Image.asset(
                //     "assets/122.png",
                //     fit: BoxFit.contain,
                //   ),
                // ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Thanks! You are all signed up",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.0,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: BRColors.btGreen,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      context
                          .read<NavigationCubit>()
                          .moveToScreen(Screens.login);
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 14.0, color: BRColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextSpan _termsText() {
  const linkStyle = TextStyle(color: BRColors.btDarkBlue, fontSize: 14.0);
  // const normalStyle = TextStyle(color: primaryText);
  return TextSpan(children: [
    const TextSpan(
      text: "I agree ",
      style: TextStyle(fontSize: 14.0, color: BRColors.trGray),
    ),
    TextSpan(
        text: "Terms of use",
        style: linkStyle,
        recognizer: TapGestureRecognizer()..onTap = _showTerms),
    const TextSpan(
      text: " and ",
      style: TextStyle(fontSize: 14.0, color: BRColors.trGray),
    ),
    TextSpan(
        text: "Privacy policy",
        style: linkStyle,
        recognizer: TapGestureRecognizer()..onTap = _showPolicy),
    const TextSpan(text: ".")
  ]);
}

Future<void> _showTerms() => launchUrl(
    Uri(scheme: 'https', host: frontendHost, path: '/terms-conditions'));

Future<void> _showPolicy() => launchUrl(
    Uri(scheme: 'https', host: frontendHost, path: '/privacy-policy'));
