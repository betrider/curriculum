import 'dart:convert';

extension ListExtension<T> on List<T>? {
  /// Converts this list into a JSON string.
  ///
  /// Use optional parameter [toEncodable] to convert types that are not a
  /// number, boolean, string, null, list or a map with string keys.
  ///
  /// See [jsonEncode].
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3].toJSON(); // [1,2,3]
  /// ```
  String? toJSON({Object? Function(Object? nonEncodable)? toEncodable}) {
    if (this == null) return '';
    return jsonEncode(this, toEncodable: toEncodable);
  }

  /// map 사용 시 value와 index를 가지고 올 수 있게끔 확장버전 추가
  List<R> mapWithIndex<R>(R Function(T value, int index) callback) {
    if (this == null) return [];

    List<R> result = [];
    for (int i = 0; i < this!.length; i++) {
      R item = callback(this![i], i);
      result.add(item);
    }
    return result;
  }

  /// forEach 사용 시 value와 index를 가지고 올 수 있게끔 확장버전 추가
  void forEachIndexed(void Function(T value, int index) f) {
    var i = 0;
    this?.forEach((e) => f(e, i++));
  }

  /// 리스트에 맞는 인덱스만 추출
  ///
  /// Example:
  /// ```dart
  /// List<String> list = ['a','b','c','d','e']
  /// list.toIndexList([0,1,3]) // ['a','b','d']
  /// ```
  List<T> toIndexList(List<int> indexList) {
    if (this == null) return [];

    List<T> result = [];
    for (int i = 0; i < indexList.length; i++) {
      result.add(this![indexList[i]]);
    }
    return result;
  }

  /// 리스트를 구분자가 있는 하나의 문자열로 변환
  ///
  /// Example:
  /// ```dart
  /// List<String> list = ['도서','도서상세] // 도서 > 도서상세
  /// ```
  String convertListToString({String separator = ' > '}) {
    if (this == null) return '';

    return this!.join(separator);
  }

  /// 중복체크 (중복이면 true 아니면 false)
  bool duplicateCheck() {
    return this!.length != this!.toSet().toList().length;
  }

  /// null 또는 비어있는 경우
  bool get isNullEmpty => this == null || this!.isEmpty;
}

extension EnumListExtension on List<Enum> {
  /// 배열 enum값 비교
  bool enumEquals(List<dynamic> otherList) {
    if (length != otherList.length) {
      return false;
    }

    sort((a, b) => a.index.compareTo(b.index));
    otherList.sort((a, b) => a.index.compareTo(b.index));

    for (int i = 0; i < length; i++) {
      if (this[i] != otherList[i]) {
        return false;
      }
    }

    return true;
  }
}
