import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  final String label;
  final Widget child;

  const CardSection({Key? key, required this.label, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiCardSection(label: label, children: [child]);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
    properties.add(DiagnosticsProperty<Widget>('child', child));
  }
}

class MultiCardSection extends StatelessWidget {
  final String label;
  final List<Widget> children;

  const MultiCardSection({Key? key, required this.label, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyLarge),
          for (final child in children)
          BRCard(
            key: child.key is LocalKey ? child.key : null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
  }
}
