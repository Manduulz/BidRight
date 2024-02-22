import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const _timerInterval = 2000;

class AuctionStoppingOverlay extends StatefulWidget {
  const AuctionStoppingOverlay({Key? key, required this.targetTime})
      : super(key: key);

  final DateTime targetTime;

  @override
  State<AuctionStoppingOverlay> createState() => _AuctionStoppingOverlayState();
}

class _AuctionStoppingOverlayState extends State<AuctionStoppingOverlay>
    with SingleTickerProviderStateMixin {
  late final Ticker ticker;

  @override
  void initState() {
    super.initState();
    ticker = createTicker((elapsed) {
      setState(() {});
    })..start();
  }

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final timeLeft =
        widget.targetTime.difference(DateTime.now()).inMilliseconds;
    if (timeLeft < 0) {
      return const SizedBox();
    }

    final count = (timeLeft / _timerInterval).ceil();
    final opacity = (timeLeft / _timerInterval) - count + 1;

    return Center(
      child: Opacity(
        opacity: Curves.easeOut.transform(opacity),
        child: SizedBox.square(
          dimension: 96,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.fromBorderSide(
                  BorderSide(color: BRColors.bgDarkBlue, width: 3)),
            ),
            child: Center(
              child: OverflowBox(
                alignment: Alignment.center,
                maxWidth: 200,
                child: Text(
                  count.toString(),
                  textHeightBehavior: const TextHeightBehavior(
                    applyHeightToLastDescent: false,
                  ),
                  style: const TextStyle(
                    fontSize: 80,
                    height: 1.15,
                    fontWeight: FontWeight.w600,
                    color: BRColors.bgDarkBlue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
