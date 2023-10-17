import 'dart:math';

import 'package:intl/intl.dart';

extension NumberExtension on num? {
  ///
  ///
  /// Example:
  /// ```dart
  ///
  /// ```
  String bytesToString({int decimals = 2}) {
    if (this! <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(this!) / log(1024)).floor();
    return '${(this! / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }

  /// 화폐단위로 변환
  ///
  /// Example:
  /// ```dart
  /// 123456789.toCurrency(); // '123,456,789'
  /// ```
  String toCurrency() {
    if (this == null) return "";
    return NumberFormat('###,###,###,###').format(this).replaceAll(' ', '');
  }

  // String toCurrencyDecimals() {
  //   if (this == null) return "";
  //   return NumberFormat('###,###,###,###.###').format(this).replaceAll(' ', '');
  // }

  String toWon() {
    if (this == null || this == 0) {
      return "무료";
    }
    return "${toCurrency()} 원";
  }

  int toInt() {
    if (this == null) return 0;
    return this!.toInt();
  }

  double toDouble() {
    if (this == null) return 0;
    return this!.toDouble();
  }

  String toString2() {
    if (this == null) return '0';
    return this!.toString();
  }

  String toPrefixAppend(String appendData) {
    try {
      if (this == null) return '';
      return appendData + toString();
    } catch (error) {
      return '';
    }
  }

  String toSuffixAppend(String appendData) {
    try {
      if (this == null) return '';
      return toString() + appendData;
    } catch (error) {
      return '';
    }
  }
}
