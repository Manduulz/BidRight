import 'package:bid_right_mobile/models/winnings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:intl/intl.dart';

import 'card_section.dart';
import 'labeled_info.dart';

class BidderSection extends StatelessWidget {
  final String winnerUsername;
  final WinnerDetail winner;

  const BidderSection({
    Key? key,
    required this.winnerUsername,
    required this.winner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardSection(
      label: 'Winning Bidder',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: LabeledInfo(
                    label: 'Winning Bid',
                    text: NumberFormat.simpleCurrency(name: 'USD')
                        .format(winner.bidAmount),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: LabeledInfo(
                    label: 'Bidder Name',
                    text: winner.name,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: LabeledInfo(
                    label: 'Bidder Account',
                    text: winnerUsername,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: LabeledInfo(
                    label: 'Paddle Number',
                    text: winner.paddleNumber,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Purchase Profile',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: LabeledInfo(
                    label: 'Profile type',
                    text: winner.type,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: LabeledInfo(
                    label: 'Phone number',
                    text: FlutterLibphonenumber().formatNumberSync(
                      winner.phoneNumber,
                      phoneNumberFormat: PhoneNumberFormat.national,
                      country: const CountryWithPhoneCode.us(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.all(4),
            child: LabeledInfo(
              label: 'Address',
              text: winner.address.toString(),
            ),
          )
        ],
      ),
    );
  }
}
