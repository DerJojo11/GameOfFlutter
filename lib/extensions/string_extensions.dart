extension StringExtension on String {
  /// Extracts a [Number] of a String.
  ///
  /// For example:
  /// ```dart
  /// final String url = "https://anapioficeandfire.com/api/houses/378";
  /// print(url.extractNumber) // 378
  /// ```
  int? get extractNumber {
    final String extractedNumber = replaceAll(RegExp(r'[^0-9]'), '');
    return int.tryParse(extractedNumber);
  }
}
