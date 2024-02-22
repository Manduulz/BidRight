import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final Progress progress;
  final Widget? child;

  const ProgressCard({
    Key? key,
    required this.progress,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BRCard(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: LimitedBox(
          maxWidth: 400,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: SizedBox(width: double.infinity, child: child),
              ),
              PositionedDirectional(
                start: 7,
                top: 0,
                bottom: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: progress.color,
                      borderRadius: const BorderRadius.all(Radius.circular(2))),
                  child: const SizedBox(width: 4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum Progress { none, inProgress, finished }

extension _ProgressColorExt on Progress {
  Color get color {
    switch (this) {
      case Progress.none:
        return BRColors.trGray;
      case Progress.inProgress:
        return BRColors.btRed;
      case Progress.finished:
        return BRColors.btGreen;
    }
  }
}
