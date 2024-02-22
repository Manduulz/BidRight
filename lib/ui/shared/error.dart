import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  final String text;
  final VoidCallback? onRetry;

  const ErrorIndicator({
    Key? key,
    required this.text,
    required this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text),
        if (onRetry != null)
          ElevatedButton(onPressed: onRetry, child: const Text('Retry'))
      ],
    );
  }
}
