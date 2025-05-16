/// Extension on nullable types that provides utility methods for working with
/// potentially null values.
extension NullableX<T extends Object?> on T? {
  /// Maps a non-null value using the provided callback function.
  ///
  /// If this value is null, returns null.
  /// If this value is not null, applies the callback function to it and returns the result.
  ///
  /// The type parameter [R] represents the return type of the callback function.
  ///
  /// This method is annotated with vm:prefer-inline to suggest to the Dart VM
  /// that this method should be inlined for better performance.
  @pragma('vm:prefer-inline')
  R? mapNotNull<R>(R? Function(T) callback) {
    return this == null ? null : callback(this as T);
  }
}
