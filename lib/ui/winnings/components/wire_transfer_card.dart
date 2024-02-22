import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'progress_card.dart';

class WireTransferCard extends StatelessWidget {
  final PastWinningDetail winning;

  const WireTransferCard({Key? key, required this.winning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auctionDate = winning.createdDate;
    return ProgressCard(
      progress: winning.isPaid ? Progress.finished : Progress.inProgress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wire Transfer',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          _WireTransferStep(
            isComplete: winning.isDepositPaid,
            isFinalPayment: false,
            amount: winning.depositAmount,
            percentage: winning.requiredDown,
            recipient: winning.auctionHost.name,
            date: depositDueTime(auctionDate),
          ),
          _WireTransferStep(
            isComplete: winning.isPaid,
            isFinalPayment: true,
            amount: winning.remainingAmount,
            percentage: 100 - winning.requiredDown,
            recipient: winning.auctionHost.name,
            date: paymentDueTime(auctionDate),
          ),
        ],
      ),
    );
  }
}

class _WireTransferStep extends StatelessWidget {
  /// Whether this step should be shown as completed.
  final bool isComplete;

  /// Whether this is the final payment.
  final bool isFinalPayment;

  /// The amount the user needs to pay by the end of this step.
  final num amount;

  /// The percentage of the total that [amount] represents.
  final num percentage;

  /// The name of the company that should receive this wire transfer.
  final String recipient;

  /// The date on which the payment is due.
  final DateTime date;

  const _WireTransferStep({
    Key? key,
    required this.isComplete,
    required this.isFinalPayment,
    required this.amount,
    required this.percentage,
    required this.recipient,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 4),
            child: isComplete
                ? const Icon(Icons.check_circle, color: BRColors.btGreen)
                : const Icon(Icons.error_outline, color: BRColors.btRed),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text.rich(
                TextSpan(children: [
                  isFinalPayment
                      ? const TextSpan(text: 'Send your full payment of ')
                      : const TextSpan(text: 'Send your initial deposit of '),
                  TextSpan(
                    children: [
                      TextSpan(
                          text: NumberFormat.simpleCurrency(name: 'USD')
                              .format(amount)),
                      TextSpan(text: ' ($percentage%)'),
                    ],
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: ' to '),
                  TextSpan(
                    text: recipient,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: ' by '),
                  TextSpan(text: DateFormat.jm().format(date)),
                  const TextSpan(text: ' on '),
                  TextSpan(
                    text: DateFormat.yMEd().format(date),
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: '.'),
                ]),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isComplete', isComplete));
    properties.add(DiagnosticsProperty<bool>('isFinalPayment', isFinalPayment));
    properties.add(DiagnosticsProperty<num>('amount', amount));
    properties.add(DiagnosticsProperty<num>('percentage', percentage));
    properties.add(StringProperty('recipient', recipient));
  }
}
