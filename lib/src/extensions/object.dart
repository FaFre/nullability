extension NullableX<T extends Object?> on T? {
  @pragma('vm:prefer-inline')
  R? mapNotNull<R>(R? Function(T) callback) {
    return this == null ? null : callback(this as T);
  }
}
