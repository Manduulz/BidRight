import 'package:json_annotation/json_annotation.dart';

/// JSON converter for [Duration].  The JSON string is assumed to be
/// the string representation of TimeSpan from .NET
class DurationConverter extends JsonConverter<Duration, String> {
  const DurationConverter();

  @override
  Duration fromJson(String json) {
    final bool isNegative;
    final int days;
    final int hours;
    final int minutes;
    final int seconds;
    final int micros;

    final parts = json.split(':');
    minutes = int.parse(parts[1]);

    isNegative = parts[0].startsWith('-');

    final hourParts = parts[0].substring(isNegative ? 1 : 0).split('.');
    hours = int.parse(hourParts.last);
    if (hourParts.length > 1) {
      days = int.parse(hourParts.first);
    } else {
      days = 0;
    }

    final secondParts = parts[2].split('.');
    seconds = int.parse(secondParts.first);

    if (secondParts.length > 1) {
      micros = (double.parse('0.${secondParts.last}') * 1000000).round();
    } else {
      micros = 0;
    }

    final absoluteDuration = Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      microseconds: micros,
    );

    return isNegative ? -absoluteDuration : absoluteDuration;
  }

  @override
  String toJson(Duration duration) {
    final days = duration.inDays;
    if (days == 0) {
      return duration.toString();
    } else {
      final truncated = (duration - Duration(days: days)).abs();
      return '$days.$truncated';
    }
  }

}