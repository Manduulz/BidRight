import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';

class VerifiedFundsText extends StatelessWidget {
  const VerifiedFundsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
          context: context, builder: (context) => const VerifiedFundsDialog()),
      child: const Padding(
        padding: EdgeInsets.all(4),
        child: Text(
          'How do verified funds work?',
          style: TextStyle(
            color: BRColors.bgDarkBlue,
          ),
        ),
      ),
    );
  }
}

class VerifiedFundsDialog extends StatefulWidget {
  const VerifiedFundsDialog({Key? key}) : super(key: key);

  @override
  State<VerifiedFundsDialog> createState() => _VerifiedFundsDialogState();
}

class _VerifiedFundsDialogState extends State<VerifiedFundsDialog> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 2 / 3,
      alignment: Alignment.center,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: AlertDialog(
          content: Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsetsDirectional.only(end: 4),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.only(end: _iconPadding),
                        child: Icon(
                          Icons.info_outlined,
                          color: Color(0xff1890ff),
                          size: _iconSize,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'How does BidRight use your funds?',
                          style: Theme.of(context).dialogTheme.titleTextStyle ??
                              Theme.of(context).textTheme.headlineSmall!,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: _iconSize + _iconPadding),
                    child: Text.rich(_verifiedFundsText),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: BRColors.btDarkBlue),
              onPressed: Navigator.of(context).pop,
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}

const _iconSize = 32.0;
const _iconPadding = 8.0;

const _verifiedFundsText = TextSpan(
    style: TextStyle(fontSize: 16, height: 1.5, color: BRColors.fnligtBlack),
    children: [
      _paragraphSpacer,
      TextSpan(
        text: 'How are my funds used?\n',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: 'We do not interact with your money/funds, and only '
            'have VIEW access to get your current balance for '
            'verification purposes.\n',
      ),
      _paragraphSpacer,
      TextSpan(
        text: 'Funds are used to verify that you have enough money '
            'to make the required deposit when participating in an auction.\n',
      ),
      _paragraphSpacer,
      TextSpan(
        text: 'What are "locked funds"?\n',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: 'When funds are "locked", that means that this balance will '
            'not be available for bidding as it is already being used for '
            'verification purposes elsewhere on BidRight.\n',
      ),
      _paragraphSpacer,
      TextSpan(
        text: 'Currently funds can be locked for the following two reasons:\n',
      ),
      _paragraphSpacer,
      TextSpan(
        children: [
          TextSpan(
            text: '\u2022  ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Active Auction',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          TextSpan(text: ': '),
          TextSpan(
            text: 'You have already allocated funds and are an '
                'active participant in an ongoing auction.\n',
          ),
        ],
      ),
      _paragraphSpacer,
      TextSpan(
        children: [
          TextSpan(
            text: '\u2022  ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Pending Payment',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          TextSpan(text: ': '),
          TextSpan(
              text: 'You have won a property during an auction and payment '
                  'needs to be made to the Auction Host. This will be '
                  'released when the Auction Host confirms the payment.')
        ],
      ),
    ]);

const _paragraphSpacer =
    TextSpan(text: '\u200b\n', style: TextStyle(fontSize: 4));
