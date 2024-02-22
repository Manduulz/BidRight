import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/locked_funds.dart';
import 'package:bid_right_mobile/ui/shared/balance_card.dart';
import 'package:bid_right_mobile/ui/shared/verified_funds_text.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/linked_accounts_card.dart';
import 'components/locked_funds_card.dart';
import 'linked_accounts_bloc.dart';

class VerifiedBalanceScreen extends StatefulWidget {
  const VerifiedBalanceScreen({Key? key}) : super(key: key);

  @override
  State<VerifiedBalanceScreen> createState() => _VerifiedBalanceScreenState();
}

class _VerifiedBalanceScreenState extends State<VerifiedBalanceScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LinkedAccountsBloc>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<LinkedAccountsBloc>();

    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text('Linked Accounts'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0),
          child: ListView(
            children: [
              StreamBuilder<Bidder>(
                stream: bloc.bidderDetail,
                builder: (context, snapshot) {
                  final bidder = snapshot.data;
                  if (bidder == null) {
                    return const SizedBox(
                      height: 67,
                      child:
                          Center(child: CircularProgressIndicator.adaptive()),
                    );
                  } else {
                    return BalanceCard(
                      availableBalance: bidder.availableBalance,
                      lockedBalance: bidder.lockedBalance,
                    );
                  }
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Linked Accounts',
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'These accounts will be used to verify your balance when participating in auctions.',
                style: TextStyle(fontSize: 12.0, color: BRColors.trGray),
              ),
              const SizedBox(
                height: 10.0,
              ),
              StreamBuilder<List<AccountLink>>(
                  stream: bloc.linkedAccounts,
                  initialData: bloc.linkedAccounts.valueOrNull,
                  builder: (context, snapshot) {
                    final linkedAccounts = snapshot.data;
                    if (linkedAccounts == null) {
                      return const Padding(
                          padding: EdgeInsets.all(8),
                          child: Center(
                              child: CircularProgressIndicator.adaptive()));
                    }
                    return LinkedAccountsCard(accounts: linkedAccounts);
                  }),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: bloc.linkAccount,
                  child: const Text(
                    '+ Link Bank Account',
                    style:
                        TextStyle(fontSize: 14.0, color: BRColors.btDarkBlue),
                  ),
                ),
              ),

              //------------------------------------------------

              const SizedBox(
                height: 20.0,
              ),
              const Row(
                children: [
                  Text(
                    'Locked Funds',
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                  Spacer(),
                  VerifiedFundsText(),
                ],
              ),

              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'These funds are being deducted from your available balance due to a pending or active auction.',
                style: TextStyle(fontSize: 12.0, color: BRColors.trGray),
              ),
              const SizedBox(
                height: 10.0,
              ),
              StreamBuilder<LockedFundsSummary>(
                  stream: bloc.lockedFunds,
                  builder: (context, snapshot) {
                    final summary = snapshot.data;
                    if (summary == null) {
                      return const Center(
                        heightFactor: 1,
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else {
                      return LockedFundsCard(lockedFundsSummary: summary);
                    }
                  }),

              //-------------------------------------------------
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
