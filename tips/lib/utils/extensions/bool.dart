extension BoolExtension on bool? {
  bool isTrue() {
    if (this == null) return false;
    return this!;
  }

  int toInt() {
    return this == true ? 1 : 0;
  }
}
