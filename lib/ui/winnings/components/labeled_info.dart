import 'package:flutter/material.dart';

class LabeledInfo extends StatelessWidget {
  final String label;
  final String text;
  final CrossAxisAlignment crossAxisAlignment;

  const LabeledInfo({
    Key? key,
    required this.label,
    required this.text,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        Text(text, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
