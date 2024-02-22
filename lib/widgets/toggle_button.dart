import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BRToggleButton extends StatelessWidget {
  final String label;
  final bool isActivated;
  final VoidCallback? onTap;

  const BRToggleButton(
      {Key? key,
        required this.label,
        required this.isActivated,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: isActivated
          ? const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: BRColors.btGreen,
      )
          : const BoxDecoration(
        border: Border.fromBorderSide(BorderSide(width: 1)),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Material(
        type: MaterialType.transparency,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        textStyle: Theme.of(context).textTheme.bodyLarge,
        child: InkWell(
          onTap: onTap,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 36),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                    color: isActivated ? Colors.white : Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
    properties.add(DiagnosticsProperty<bool>('isActivated', isActivated));
    properties.add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap));
  }
}