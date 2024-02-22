import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key? key,
    required this.availableBalance,
    required this.lockedBalance,
  }) : super(key: key);

  final num availableBalance;
  final num lockedBalance;

  @override
  Widget build(BuildContext context) {
    bool hasLockedBalance = lockedBalance > 0;
    return BRCard(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              constraints: const BoxConstraints(minWidth: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Available Balance',
                    style:
                        TextStyle(fontSize: 10.0, color: BRColors.bgDarkBlue),
                  ),
                  Text(
                    NumberFormat.simpleCurrency(name: 'USD')
                        .format(availableBalance),
                    style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: BRColors.fnligtBlack),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color:
                    hasLockedBalance ? BRColors.btGreen : BRColors.bgLightGray,
              ),
              padding: const EdgeInsets.all(8),
              constraints: const BoxConstraints(minWidth: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Locked Balance',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: hasLockedBalance
                            ? BRColors.white
                            : BRColors.bgDarkBlue),
                  ),
                  Text(
                    NumberFormat.simpleCurrency(name: 'USD')
                        .format(lockedBalance),
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: hasLockedBalance
                            ? Colors.white
                            : const Color(0xff666666)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
