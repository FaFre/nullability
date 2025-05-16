extension NullableStringX on String? {
  @pragma('vm:prefer-inline')
  String? get whenNotEmpty {
    final value = this;
    return value != null && value.isNotEmpty ? value : null;
  }

  @pragma('vm:prefer-inline')
  bool get isNotEmpty => this != null && this!.isNotEmpty;

  @pragma('vm:prefer-inline')
  bool get isEmpty => this == null || this!.isEmpty;
}
