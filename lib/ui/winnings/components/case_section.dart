import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/ui/winnings/components/card_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/labeled_info.dart';
import 'package:flutter/material.dart';

class CaseSection extends StatelessWidget {
  final PastWinningDetail winning;

  const CaseSection({Key? key, required this.winning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardSection(
      label: 'Case Information',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: LabeledInfo(
                label: 'Firm Name', text: winning.caseFirmName),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'File Number',
                    text: winning.caseFileNumber,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LabeledInfo(
                    label: 'Case Number',
                    text: winning.caseNumber,
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
