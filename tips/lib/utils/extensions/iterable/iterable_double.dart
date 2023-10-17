///extensions on [Iterable<double>] like [List<double>] and [Set<double>].

import 'iterable_object.dart';

extension IterableDouble on Iterable<double>{

  /// 합계
  ///
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2.0, 6.0, 4.0, 8.0].sum(); // 20.0
  /// ```
  double? sum() {
    return sumByDouble((n) => n);
  }

  /// 평균
  ///
  /// Returns the average value (arithmetic mean) of all elements.
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [2.0, 4.0, 6.0, 8.0].average(); // 5.0
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
  /// [9.0, 42.0, 3.0].max(); // 42.0
  /// ```
  double? max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  ///최소값
  ///
  /// Returns the lowest value of all elements
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [17.0, 13.0, 92.0].min(); // 13.0
  /// ```
  double? min() {
    return minBy((a, b) => a.compareTo(b));
  }
}