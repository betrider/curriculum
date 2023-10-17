///extensions on [Iterable<int>] like [List<int>] and [Set<int>].

import 'iterable_object.dart';

extension IterableInt on Iterable<int>{

  /// 합계
  ///
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2, 6, 4, 8].sum(); // 20
  /// ```
  int? sum() {
    return sumBy((n) => n);
  }

  /// 평균
  ///
  /// Returns the average value (arithmetic mean) of all elements.
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [2, 4, 6, 8].average(); // 5.0
  /// ```
  double? average() {
    return averageBy((n) => n);
  }

  /// 최대값
  ///
  /// Returns the largest value of all elements
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [9, 42, 3].max(); // 42
  /// ```
  int? max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  /// 최소값
  ///
  /// Returns the lowest value of all elements
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [17, 13, 92].min(); // 13
  /// ```
  int? min() {
    return minBy((a, b) => a.compareTo(b));
  }

}