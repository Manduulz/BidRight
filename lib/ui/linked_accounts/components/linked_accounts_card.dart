import 'dart:convert';

import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/ui/linked_accounts/linked_accounts_bloc.dart';
import 'package:bid_right_mobile/util/string_extension.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class LinkedAccountsCard extends StatelessWidget {
  final List<AccountLink> accounts;

  const LinkedAccountsCard({
    Key? key,
    required this.accounts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accountsByType =
        accounts.groupListsBy((element) => element.account.subtype);
    return BRCard(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final entry in accountsByType.entries) ...[
              Text(
                '${entry.key?.toTitleCase()} (${entry.value.length})',
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Divider(
                thickness: 2.0,
              ),
              for (final account in entry.value)
                _BankAccountItem(account: account),
            ],
            if (accounts.isEmpty) const Text('No linked accounts'),
          ],
        ),
      ),
    );
  }
}

class _BankAccountItem extends StatelessWidget {
  const _BankAccountItem({
    Key? key,
    required this.account,
  }) : super(key: key);

  final AccountLink account;

  @override
  Widget build(BuildContext context) {
    final isValid = account.isValid;
    final backgroundColor = isValid ? Colors.transparent : Colors.red;
    final textColor = isValid ? BRColors.fnligtBlack : Colors.white;
    final lightColor = isValid ? BRColors.trGray : Colors.white;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Ink(
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: account.account.institutionLogo != null
                  ? Image.memory(
                      base64Decode(account.account.institutionLogo!),
                      height: 24,
                      width: 24,
                    )
                  : const Icon(Icons.account_balance_outlined),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${account.nickname} (${account.account.mask})',
                  style: TextStyle(fontSize: 14.0, color: textColor),
                ),
                Text(
                  'Last updated ${DateFormat.yMd().add_jm().format(account.account.modifiedDate.toLocal())}',
                  style: TextStyle(fontSize: 10.0, color: lightColor),
                ),
              ],
            ),
            const Spacer(),
            Text(
              NumberFormat.currency(symbol: '\$')
                  .format(account.account.balance),
              style: TextStyle(fontSize: 14.0, color: textColor),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.delete,
              ),
              onPressed: () => _unlinkAccount(context, account),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _unlinkAccount(BuildContext context, AccountLink account) async {
  final shouldDelete = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Remove account'),
          content: Text(
              'Really remove account ${account.nickname} (${account.account.mask})?'),
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

  if (context.mounted && shouldDelete) {
    final result = await context
        .read<LinkedAccountsBloc>()
        .unlinkAccount(account.account.id);

    if (!context.mounted) {
      return;
    }

    if (result is! Failure) {
      return;
    }

    final error = result.error;
    if (error is String) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: Text(error),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        ),
      );
    }
  }
}
