import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/ui/winnings/components/card_section.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentInfoSection extends StatelessWidget {
  final PastWinningDetail winning;

  const PaymentInfoSection({Key? key, required this.winning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardSection(
      label: 'Payment Info',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _PaymentEntry(
            label: 'Bid Amount',
            amount: winning.winner.bidAmount,
          ),
          _PaymentEntry(
            label: 'Total',
            amount: winning.totalAmount,
            color: BRColors.btGreen,
            overline: true,
          ),
          if (winning.isDepositPaid) ...[
            const Divider(),
            _PaymentEntry(
              label: 'Initial Deposit (${winning.requiredDown}%)',
              amount: -winning.depositAmount,
            ),
            if (winning.isPaid)
              _PaymentEntry(
                label: 'Full Payment',
                amount: -winning.remainingAmount,
              ),
            const Divider(),
            _PaymentEntry(
              label: 'Remaining Balance',
              amount: _remainingBalance,
              color: BRColors.btGreen,
            ),
          ],
        ],
      ),
    );
  }

  num get _remainingBalance {
    if (winning.isPaid) {
      return 0;
    } else if (winning.isDepositPaid) {
      return winning.remainingAmount;
    } else {
      return winning.totalAmount;
    }
  }
}

class _PaymentEntry extends StatelessWidget {
  const _PaymentEntry({
    Key? key,
    required this.label,
    required this.amount,
    this.color,
    this.overline = false,
  }) : super(key: key);

  final String label;
  final num amount;
  final Color? color;
  final bool overline;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(label)),
        IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (overline)
                const Divider(
                  color: Colors.black,
                  height: 8,
                ),
              Text(
                NumberFormat.simpleCurrency(name: 'USD').format(amount),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: color),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
