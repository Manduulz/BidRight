import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/ui/winnings/components/card_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/labeled_info.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AuctionInfoSection extends StatelessWidget {
  final PastWinningDetail winning;

  const AuctionInfoSection({Key? key, required this.winning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardSection(
      label: 'Auction Information',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'Date',
                    text: DateFormat.yMMMEd().format(winning.startedTime.toLocal()),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                      label: 'Bidder Name', text: winning.winner.name),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'Opening Bid',
                    text: NumberFormat.simpleCurrency(name: 'USD')
                        .format(winning.openingPrice),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'Number of Bidders',
                    text: NumberFormat().format(winning.numberOfBidders),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'Property Lot Number',
                    text: NumberFormat().format(winning.lotNumber),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'Auction Host',
                    text: winning.auctionHost.name,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
