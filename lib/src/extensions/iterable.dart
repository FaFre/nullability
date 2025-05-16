extension NullableIterable on Iterable? {
  @pragma('vm:prefer-inline')
  bool get isNotEmpty => this != null && this!.isNotEmpty;

  @pragma('vm:prefer-inline')
  bool get isEmpty => this == null || this!.isEmpty;
}
