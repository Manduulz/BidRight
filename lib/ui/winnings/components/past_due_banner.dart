import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';

class PastDueBanner extends StatelessWidget {
  const PastDueBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(width: 2, color: BRColors.btRed),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(Icons.error_outline, color: BRColors.btRed),
            SizedBox(width: 4),
            Expanded(
                child: Text(
              'Payment past due',
              style: TextStyle(color: BRColors.btRed),
            )),
          ],
        ),
      ),
    );
  }
}
