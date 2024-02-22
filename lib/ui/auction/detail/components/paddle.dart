import 'package:flutter/material.dart';

class Paddle extends StatelessWidget {
  final String paddleNumber;
  final Color color;

  const Paddle({
    Key? key,
    required this.paddleNumber,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      foregroundColor:
          color.computeLuminance() >= 0.35 ? Colors.black : Colors.white,
      child: Text(paddleNumber),
    );
  }
}
