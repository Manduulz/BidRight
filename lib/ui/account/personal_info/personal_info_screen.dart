import 'dart:async';
import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/ui/account/personal_info/account_verify/account_verify_dialog.dart';
import 'package:bid_right_mobile/ui/shared/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bid_right_mobile/util/theme.dart';

import 'components/personal_info_section.dart';
import 'components/phone_section.dart';
import 'components/verify_account_section.dart';
import 'personal_info_cubit.dart';
import 'personal_info_state.dart';

//-------------------------------

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text('Personal Information'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
            builder: (context, state) {
          return state.profile.map(
              uninitialized: (_) => const SizedBox(),
              loading: (_) =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              error: (_) => ErrorIndicator(
                  text: 'Failed to load personal data',
                  onRetry: () =>
                      context.read<PersonalInfoCubit>().loadProfile()),
              loaded: (loaded) => _PersonalInfoContent(
                  profile: state.newProfile ?? loaded.value));
        }),
      ),
    );
  }
}

class _PersonalInfoContent extends StatefulWidget {
  final Bidder profile;

  const _PersonalInfoContent({Key? key, required this.profile})
      : super(key: key);

  @override
  _PersonalInfoContentState createState() => _PersonalInfoContentState();
}

class _PersonalInfoContentState extends State<_PersonalInfoContent> {
  // final phoneFormatter = MaskTextInputFormatter(mask: "(###) ###-####", filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          VerifyAccountSection(
              isVerified: widget.profile.isVerified,
              onVerifyAccount: _verifyAccount),
          const PersonalInfoSection(),
          PhoneSection(phones: widget.profile.phones),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                _deactivateAccount(context);
              },
              child: const Text(
                'Deactivate Account',
                style: TextStyle(fontSize: 16.0, color: Colors.redAccent),
              ),
            ),
          ),
          //-------------------------------------//
        ],
      ),
    );
  }

  Future<void> _verifyAccount() async {
    final isVerified = await verifyAccount(context);
    if (isVerified && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Your account is now verified.'),
        backgroundColor: BRColors.btGreen,
      ));
    }
  }
}

Future<void> _deactivateAccount(BuildContext context) async {
  final success = await showGeneralDialog<bool>(
          context: context,
          barrierColor: const Color(0x80000000),
          barrierDismissible: true,
          barrierLabel:
              MaterialLocalizations.of(context).modalBarrierDismissLabel,
          transitionDuration: const Duration(milliseconds: 250),
          pageBuilder: (context, _, __) {
            return StatefulBuilder(builder: (context, setDialogState) {
              return AlertDialog(
                insetPadding: EdgeInsets.zero,
                //  contentPadding: EdgeInsets.zero,
                titlePadding: const EdgeInsets.all(10.0),
                content: SizedBox(
                  width: 255.0,
                  height: 140.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Are you sure you want to deactivate?",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text('(Unimplemented)'),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop<bool>(context, false);
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.blueAccent),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: const Text(
                              "Ok",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            });
          }) ??
      false;

  if (success) {
    // TODO: deactivate account
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Unimplemented')),
      );
    }
  }
}
