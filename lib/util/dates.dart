extension DateTimeExt on DateTime {
  /// Subtracts a number of years from this [DateTime].
  ///
  /// If this date is the last day in February, this method will
  /// return the last day in February.
  DateTime minusYears(int years) {
    final targetDate = DateTime.utc(year - years, month, day);
    if (targetDate.month != month) {
      // This date is February 29, but target year is not a leap year.
      return targetDate.subtract(const Duration(days: 1));
    }

    if (month == 2 && day == 28) {
      final tomorrow = add(const Duration(days: 1));
      final nextDay = targetDate.add(const Duration(days: 1));
      if (tomorrow.day == 1 && nextDay.day == 29) {
        // Someone born on February 29 legally becomes a year older
        // on February 28 in non-leap years.
        return nextDay;
      }
    }

    return targetDate;
  }
}