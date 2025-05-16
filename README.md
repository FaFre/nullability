## Features

Provides the optimized extensions to work with nullable types:

```dart
extension NullableX<T extends Object?> on T? {
  @pragma('vm:prefer-inline')
  R? mapNotNull<R>(R? Function(T) callback) {
    return this == null ? null : callback(this as T);
  }
}

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

extension NullableIterable on Iterable? {
  @pragma('vm:prefer-inline')
  bool get isNotEmpty => this != null && this!.isNotEmpty;

  @pragma('vm:prefer-inline')
  bool get isEmpty => this == null || this!.isEmpty;
}
```
