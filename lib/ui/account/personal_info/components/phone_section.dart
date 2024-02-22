import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/ui/account/personal_info/components/add_phone_dialog.dart';
import 'package:bid_right_mobile/ui/account/personal_info/phone_verify/phone_verify_dialog.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:provider/provider.dart';

import '../personal_info_cubit.dart';

class PhoneSection extends StatelessWidget {
  final List<Phone> phones;

  const PhoneSection({Key? key, required this.phones}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          alignment: AlignmentDirectional.centerStart,
          child: const Text(
            "Phone Numbers",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
        BRCard(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const _PhoneTableHeader(),
                for (final phoneEntry in phones.asMap().entries)
                  DecoratedBox(
                    decoration: phoneEntry.key.isOdd
                        ? const BoxDecoration(color: BRColors.bglightBlue)
                        : const BoxDecoration(color: BRColors.bgLightGray),
                    child: _PhoneNumberItem(phone: phoneEntry.value),
                  )
              ],
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () => addPhone(context),
          child: const Text('Add phone'),
        ),
      ],
    );
  }

  Future<void> addPhone(BuildContext context) async {
    final phone = await selectPhoneNumber(context);
    if (phone != null && context.mounted) {
      context.read<PersonalInfoCubit>().addPhone(phone);
    }
  }
}

const _numberFlex = 2;
const _primaryFlex = 1;
const _verifiedFlex = 1;
const _deleteWidth = 48.0;

class _PhoneTableHeader extends StatelessWidget {
  const _PhoneTableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: _numberFlex,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(child: Text('Phone number')),
          ),
        ),
        Expanded(
          flex: _primaryFlex,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(child: Text('Primary')),
          ),
        ),
        Expanded(
          flex: _verifiedFlex,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(child: Text('Verified')),
          ),
        ),
        SizedBox(width: _deleteWidth),
      ],
    );
  }
}

class _PhoneNumberItem extends StatelessWidget {
  final Phone phone;

  const _PhoneNumberItem({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: _numberFlex,
            child: Center(
              child: Text(formattedPhone),
            ),
          ),
          Expanded(
            flex: _primaryFlex,
            child: phone.isPrimary
                ? const Center(
                    child: Icon(Icons.check, color: BRColors.btGreen))
                : TextButton(
                    onPressed: () => context
                        .read<PersonalInfoCubit>()
                        .setPrimaryPhone(phone),
                    child: const Text(
                      'Set primary',
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
          Expanded(
            flex: _verifiedFlex,
            child: phone.isVerified
                ? const Center(
                    child: Icon(Icons.check, color: BRColors.btGreen))
                : TextButton(
                    onPressed: () =>
                        verifyPhoneNumber(context, phoneNumber: phone.number),
                    child: const Text(
                      'Verify',
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
          SizedBox(
            width: _deleteWidth,
            child: IconButton(
              color: BRColors.btRed,
              disabledColor: BRColors.trGray,
              icon: const Icon(Icons.delete),
              onPressed: phone.isPrimary ? null : () => removePhone(context),
            ),
          )
        ],
      ),
    );
  }

  String get formattedPhone {
    return FlutterLibphonenumber().formatNumberSync(
      phone.number,
      phoneNumberFormat: PhoneNumberFormat.national,
      country: const CountryWithPhoneCode.us(),
    );
  }

  Future<void> removePhone(BuildContext context) async {
    final shouldRemove = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Remove phone'),
            content:
                Text('Remove phone number $formattedPhone from your account?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Remove'),
              ),
            ],
          ),
        ) ??
        false;

    if (!context.mounted || !shouldRemove) {
      return;
    }

    final result = await context.read<PersonalInfoCubit>().removePhone(phone);
    if (context.mounted && result is Failure) {
      final error = result.error;
      if (error is String) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error removing phone')),
        );
      }
    }
  }
}
