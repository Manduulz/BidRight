import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';

class VerifyAccountSection extends StatelessWidget {
  const VerifyAccountSection({
    Key? key,
    required this.isVerified,
    required this.onVerifyAccount,
  }) : super(key: key);

  final bool isVerified;
  final VoidCallback onVerifyAccount;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 100),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Text('Identify Verification'),
              const Spacer(),
              isVerified
                  ? const Text(
                      'Verified Account',
                      style: TextStyle(color: BRColors.btGreen),
                    )
                  : const Text(
                      'Unverified Account',
                      style: TextStyle(color: BRColors.btRed),
                    )
            ],
          ),
          if (!isVerified) ...[
            const BRCard(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Please verify your account to gain access to bidding.",
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: onVerifyAccount,
              child: const Text(
                'Verify Account',
                style: TextStyle(fontSize: 14.0, color: BRColors.white),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
