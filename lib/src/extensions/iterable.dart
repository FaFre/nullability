/// Extension on nullable [Iterable] that provides utility methods to check
/// if the iterable is empty or not empty.
extension NullableIterable on Iterable? {
  /// Returns true if this iterable is not null and contains at least one element.
  ///
  /// This method is annotated with vm:prefer-inline to suggest to the Dart VM
  /// that this method should be inlined for better performance.
  @pragma('vm:prefer-inline')
  bool get isNotEmpty => this != null && this!.isNotEmpty;

  /// Returns true if this iterable is null or contains no elements.
  ///
  /// This method is annotated with vm:prefer-inline to suggest to the Dart VM
  /// that this method should be inlined for better performance.
  @pragma('vm:prefer-inline')
  bool get isEmpty => this == null || this!.isEmpty;
}
