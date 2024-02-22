import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

/// A widget to show a given [DateTime].
///
/// Can show either time, month/day/time, or year/month/day/time,
/// depending on how many components match today's date.
class TimeText extends StatefulWidget {
  final DateTime time;
  final TextStyle? style;

  const TimeText({Key? key, required this.time, this.style}) : super(key: key);

  @override
  State<TimeText> createState() => _TimeTextState();
}

class _TimeTextState extends State<TimeText> {
  Timer? _timer;

  DateTime get _localTime => widget.time.toUtc().toLocal();

  _ComponentsMatch get _matchingComponents {
    final now = DateTime.now();
    final dateTime = _localTime;

    if (now.year == dateTime.year &&
        now.month == dateTime.month &&
        now.day == dateTime.day) {
      return _ComponentsMatch.day;
    }

    if (now.year == dateTime.year) {
      return _ComponentsMatch.year;
    }

    return _ComponentsMatch.none;
  }

  @override
  void initState() {
    super.initState();
    _onTimeUpdated();
  }

  @override
  void didUpdateWidget(covariant TimeText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.time != widget.time) {
      _onTimeUpdated();
    }
  }

  void _onTimeUpdated() {
    _timer?.cancel();

    final now = DateTime.now();
    final time = _localTime;

    final match = _matchingComponents;

    final DateTime? nextChange;

    switch (match) {
      case _ComponentsMatch.none:
        if (now.isBefore(time)) {
          nextChange = DateTime(time.year);
        } else {
          nextChange = null;
        }
        break;
      case _ComponentsMatch.year:
        if (now.isBefore(time)) {
          nextChange = DateTime(time.year, time.month, time.day);
        } else {
          nextChange = DateTime(now.year + 1);
        }
        break;
      case _ComponentsMatch.day:
        nextChange = DateTime(now.year, now.month, now.day + 1);
        break;
    }

    if (nextChange == null) return;

    _timer = Timer(nextChange.difference(now), () => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _dateFormat.format(widget.time),
      style: widget.style,
    );
  }

  DateFormat get _dateFormat {
    switch (_matchingComponents) {
      case _ComponentsMatch.none:
        return DateFormat.yMd().add_jms();
      case _ComponentsMatch.year:
        return DateFormat.Md().add_jms();
      case _ComponentsMatch.day:
        return DateFormat.jms();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}

enum _ComponentsMatch {
  none, year, day
}