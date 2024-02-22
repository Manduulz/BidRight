import 'package:flutter/material.dart';

class BRCard extends StatelessWidget {
  const BRCard({
    Key? key,
    this.child,
    this.margin = const EdgeInsets.all(4),
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10), blurRadius: 20, color: Color(0x0d000000))
          ],
        ),
        child: Material(
          type: MaterialType.transparency,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          clipBehavior: Clip.antiAlias,
          child: child,
        ),
      ),
    );
  }
}
