extension StringExt on String {
  String toTitleCase() => toLowerCase().splitMapJoin(RegExp('\\s'),
      onNonMatch: (word) =>
          word.isEmpty ? word : "${word[0].toUpperCase()}${word.substring(1)}");

  String nonBreaking() => replaceAll(' ', '\u00A0').replaceAll('-', '\u2011');

  String digitsOnly() => replaceAll(RegExp(r'\D'), '');
}
