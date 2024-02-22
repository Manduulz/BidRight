import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';

import 'card_shadow.dart';

class BRForwardButton extends StatelessWidget {
  const BRForwardButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  final void Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BRCard(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: DefaultTextStyle.merge(
            style: const TextStyle(
                fontSize: 14.0, color: BRColors.bgDarkBlue),
            child: Row(
              children: [
                child,
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: BRColors.bgDarkBlue,
                  size: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}