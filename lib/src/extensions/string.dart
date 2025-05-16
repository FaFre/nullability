/// Extension on nullable [String] that provides utility methods for working with
/// potentially null or empty strings.
extension NullableStringX on String? {
  /// Returns this string if it is not null and not empty, otherwise returns null.
  ///
  /// This method is useful for converting empty strings to null.
  ///
  /// This method is annotated with vm:prefer-inline to suggest to the Dart VM
  /// that this method should be inlined for better performance.
  @pragma('vm:prefer-inline')
  String? get whenNotEmpty {
    final value = this;
    return value != null && value.isNotEmpty ? value : null;
  }

  /// Returns true if this string is not null and contains at least one character.
  ///
  /// This method is annotated with vm:prefer-inline to suggest to the Dart VM
  /// that this method should be inlined for better performance.
  @pragma('vm:prefer-inline')
  bool get isNotEmpty => this != null && this!.isNotEmpty;

  /// Returns true if this string is null or contains no characters.
  ///
  /// This method is annotated with vm:prefer-inline to suggest to the Dart VM
  /// that this method should be inlined for better performance.
  @pragma('vm:prefer-inline')
  bool get isEmpty => this == null || this!.isEmpty;
}
