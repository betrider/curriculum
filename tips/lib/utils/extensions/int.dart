extension IntExtension on int? {
  String toString2() {
    if (this == null) return '0';
    return this!.toString();
  }

  int get length {
    if (this == null) return 0;
    return this!.toString().length;
  }
}
