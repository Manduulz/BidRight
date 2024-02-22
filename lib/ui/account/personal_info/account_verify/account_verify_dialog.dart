import 'dart:convert';

import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/ui/account/personal_info/account_verify/account_verify_cubit.dart';
import 'package:bid_right_mobile/ui/account/personal_info/phone_verify/phone_verify_dialog.dart';
import 'package:bid_right_mobile/ui/shared/error.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';

import 'account_verify_state.dart';

Future<bool> verifyAccount(BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => BlocProvider<AccountVerifyCubit>(
          create: (context) => AccountVerifyCubit(
            repository: context.read<AccountRepository>(),
            verifyPhone: (phone, {accountId}) => verifyPhoneNumber(
              context,
              phoneNumber: phone,
              accountId: accountId,
            ),
          ),
          child: const _AccountVerifyDialog(),
        ),
      ) ??
      false;
}

class _AccountVerifyDialog extends StatelessWidget {
  const _AccountVerifyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasSelectedAccount = context.select<AccountVerifyCubit, bool>(
        (value) => value.state.selectedAccountId != null);
    return AlertDialog(
      scrollable: true,
      title: hasSelectedAccount
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(
                    onPressed: () =>
                        context.read<AccountVerifyCubit>().unselectAccount()),
                const Expanded(child: Text('Select phone number')),
              ],
            )
          : const Text('Select bank account'),
      content: BlocListener<AccountVerifyCubit, AccountVerifyState>(
        listenWhen: (previous, current) {
          return previous.isVerified != current.isVerified;
        },
        listener: (context, state) {
          if (state.isVerified) {
            Navigator.of(context).pop(true);
          }
        },
        child: hasSelectedAccount
            ? const _AccountVerifyStep2()
            : const _AccountVerifyStep1(),
      ),
    );
  }
}

class _AccountVerifyStep1 extends StatelessWidget {
  const _AccountVerifyStep1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoadingState<List<AccountLink>> accounts;

    try {
      accounts = context
          .select<AccountVerifyCubit, LoadingState<List<AccountLink>>>(
              (value) => value.state.accounts)
          .maybeWhen(orElse: () {
        return const Loaded([]);
      });
    } catch (e) {
      accounts = const Loaded([]);
    }

    return accounts.map(
        uninitialized: (_) => const SizedBox.shrink(),
        loading: (_) => const Center(
              heightFactor: 1,
              child: CircularProgressIndicator.adaptive(),
            ),
        error: (error) => ErrorIndicator(
            text: 'Error loading bank accounts',
            onRetry: () => context.read<AccountVerifyCubit>().loadAccounts()),
        loaded: (loaded) => _AccountVerifyStep1Content(accounts: loaded.value));
  }
}

class _AccountVerifyStep1Content extends StatelessWidget {
  final List<AccountLink> accounts;

  const _AccountVerifyStep1Content({Key? key, required this.accounts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Account'),
        const Divider(),
        for (final entry in accounts.asMap().entries)
          Ink(
            color: entry.key.isEven ? Colors.transparent : BRColors.bglightBlue,
            child: _LinkedAccountItem(account: entry.value),
          ),
        if (accounts.isEmpty) const Text('You have no linked accounts.')
      ],
    );
  }
}

class _LinkedAccountItem extends StatelessWidget {
  const _LinkedAccountItem({
    Key? key,
    required this.account,
  }) : super(key: key);

  final AccountLink account;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context
          .read<AccountVerifyCubit>()
          .onAccountSelected(account.account.id),
      child: Container(
        constraints: const BoxConstraints(minHeight: 48),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: account.account.institutionLogo != null
                  ? Image.memory(base64Decode(account.account.institutionLogo!),
                      height: 24, width: 24)
                  : const Icon(Icons.account_balance_outlined),
            ),
            Text(account.nickname)
          ],
        ),
      ),
    );
  }
}

class _AccountVerifyStep2 extends StatelessWidget {
  const _AccountVerifyStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountVerifyCubit, AccountVerifyState>(
      builder: (context, state) {
        return state.numbers.map(
          uninitialized: (_) => const SizedBox(),
          loading: (_) => const Center(
            heightFactor: 1,
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (_) => ErrorIndicator(
              text: 'Error loading phone numbers',
              onRetry: () =>
                  context.read<AccountVerifyCubit>().loadAccountPhones()),
          loaded: (loaded) => _AccountVerifyStep2Content(numbers: loaded.value),
        );
      },
    );
  }
}

class _AccountVerifyStep2Content extends StatelessWidget {
  final List<String> numbers;

  const _AccountVerifyStep2Content({Key? key, required this.numbers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Phone number'),
        const Divider(),
        for (final entry in numbers.asMap().entries)
          Ink(
            color: entry.key.isEven ? Colors.transparent : BRColors.bglightBlue,
            child: _PhoneItem(number: entry.value),
          ),
      ],
    );
  }
}

class _PhoneItem extends StatelessWidget {
  final String number;

  const _PhoneItem({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final success =
            await context.read<AccountVerifyCubit>().verifyPhone(number);
        if (context.mounted && success) {
          Navigator.of(context).pop();
        }
      },
      child: Container(
        constraints: const BoxConstraints(minHeight: 48),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Text(FlutterLibphonenumber().formatNumberSync(number,
                phoneNumberFormat: PhoneNumberFormat.national,
                country: const CountryWithPhoneCode.us())),
            const Spacer(),
            const Text('Verify'),
          ],
        ),
      ),
    );
  }
}
