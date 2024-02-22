import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CountdownText extends StatefulWidget {
  const CountdownText({
    Key? key,
    required this.targetTime,
    this.style,
  }) : super(key: key);

  final DateTime targetTime;
  final TextStyle? style;

  @override
  State<CountdownText> createState() => _CountdownTextState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('targetTime', targetTime));
  }
}

class _CountdownTextState extends State<CountdownText> {
  Timer? timer;

  late Duration timeRemaining;

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  @override
  void didUpdateWidget(covariant CountdownText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.targetTime != widget.targetTime) {
      initTimer();
    }
  }

  void initTimer() async {
    final duration = widget.targetTime.difference(DateTime.now());

    final fraction = duration - Duration(seconds: duration.inSeconds);

    timer?.cancel();
    _updateDuration();
    await Future.delayed(fraction);

    if (!mounted) {
      return;
    }

    _updateDuration();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer != this.timer || !mounted) {
        timer.cancel();
        return;
      }

      _updateDuration();
    });
  }

  void _updateDuration() {
    if (!mounted) {
      return;
    }

    final duration = widget.targetTime.difference(DateTime.now());
    final roundedDuration =
        Duration(seconds: (duration.inMilliseconds / 1000).round());
    setState(() => timeRemaining = roundedDuration);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (timeRemaining.isNegative) {
      return const SizedBox.shrink();
    }
    return Text(timerString, style: widget.style);
  }

  String get timerString {
    final days = timeRemaining.inDays;
    final hours = timeRemaining.inHours % 24;
    final minutes = timeRemaining.inMinutes % 60;
    final seconds = timeRemaining.inSeconds % 60;

    final parts = [
      if (days > 0) '${days}d',
      if (days > 0 || hours > 0) '${hours}h',
      '${minutes}m',
      '${seconds}s',
    ];

    return parts.join(' ');
  }
}
