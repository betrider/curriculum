import 'package:intl/intl.dart';

extension StringExtension on String {
  RegExp toRegExp() {
    return RegExp(this);
  }
}

extension StringExtension2 on String? {
  /// 문자열 변환 시 데이터가 없는경우 초기값 제공
  ///
  /// Example:
  /// ```dart
  /// ''.toDefaultString(); // '-'
  /// null.toDefaultString(); // '-'
  /// '123'.toDefaultString(); // '123'
  /// ```
  String toDefaultString(String? defaultString) {
    if (this == null || this!.isEmpty) {
      return defaultString ?? '';
    } else {
      return toString();
    }
  }

  /// 화폐단위로 변환
  ///
  /// Example:
  /// ```dart
  /// '123456789'.toCurrency(); // '123,456,789'
  /// ```
  String toCurrency() {
    if (this == null) {
      return '';
    } else {
      int data = toString().replaceAll(',', '').toInt();
      return NumberFormat('###,###,###,###').format(data).replaceAll(' ', '');
    }
  }

  /// 정규식 포맷으로 변환
  RegExp toRegExp() {
    if (this == null) {
      return RegExp('');
    } else {
      return RegExp(this!);
    }
  }

  /// 생년월일 포맷 변환
  ///
  /// Example:
  /// ```dart
  /// '19921001'.toBirthday(); // '1992년 10월 01일'
  /// ```
  String toBirthday() {
    if (this == null) return '';
    if (this!.length != 8) return this!;
    return '${this!.substring(0, 4)}년 ${this!.substring(4, 6)}월 ${this!.substring(6, 8)}일';
  }

  // 월일
  String toDate() {
    if (this == null) return '';
    if (this!.length != 8) return this!;
    return '${this!.substring(4, 6)}.${this!.substring(6, 8)}';
  }

  /// 가격 포맷
  ///
  /// Example:
  /// ```dart
  /// ''.toPrice(); // '무료'
  /// '325'.toPrice(); // '325'
  /// ```
  String toPrice() {
    if (this == null) {
      return '';
    } else {
      return this!.isEmpty || this == "0" || this == "" ? "무료" : toCurrency();
    }
  }

  /// 가격 포맷2
  ///
  /// Example:
  /// ```dart
  /// ''.toPrice(); // '무료'
  /// '325'.toPrice(); // '325원'
  /// ```
  String toPrice2() {
    if (this == null) {
      return '';
    } else {
      return this!.isEmpty || this == "0" || this == "" ? "무료" : "${toCurrency()}원";
    }
  }

  /// 가격 포맷3
  ///
  /// Example:
  /// ```dart
  /// '5'.toPrice(prefix = '선물'); // '선물 5개'
  /// ```
  String toPrice3({String prefix = '', String suffix = '개'}) {
    if (this == null) {
      return '';
    } else {
      return '$prefix ${toCurrency()}$suffix';
    }
  }

  // 성별 변환
  ///
  /// Example:
  /// ```dart
  /// 'MALE'.toGender(); // '남성'
  /// 'FEMALE'.toGender(); // '여성'
  /// ```
  String toGender() {
    if (this == "MALE") {
      return "남성";
    } else if (this == "FEMALE") {
      return "여성";
    } else {
      return "";
    }
  }

  /// 전화번호 형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// '01012344256'.toPhoneNumber(); // '010-1234-4256'
  /// ```
  String toPhoneNumber() {
    const List<String?> areaNumberList = [
      '02',
      '051',
      '053',
      '032',
      '062',
      '042',
      '052',
      '044',
      '031',
      '033',
      '043',
      '041',
      '063',
      '061',
      '054',
      '055',
      '064'
    ]; //지역번호
    const List<String?> oldNumberList = ['011', '012', '013', '014', '015', '016', '017', '018', '019']; //옛날번호
    const List<String?> internetNumberList = ['010', '070']; //인터넷
    const List<String?> commericialNumberList = ['1588', '1644']; //상업용

    if (this == null) return '';

    if (this!.isEmpty) {
      return "";
    }

    if (this!.contains('-')) return this!;

    if (this!.length < 3) {
      return this!;
    }
    if (this!.length >= 2 && areaNumberList.contains(this!.substring(0, 2))) {
      if (this!.length <= 6) {
        return '${this!.substring(0, 2)}-${this!.substring(2, this!.length)}';
      } else {
        return '${this!.substring(0, 2)}-${this!.substring(2, 6)}-${this!.substring(6, this!.length)}';
      }
    } else if (areaNumberList.contains(this!.substring(0, 3))) {
      if (this!.length <= 6) {
        return '${this!.substring(0, 3)}-${this!.substring(3, this!.length)}';
      } else {
        return '${this!.substring(0, 3)}-${this!.substring(3, 6)}-${this!.substring(6, this!.length)}';
      }
    } else if (oldNumberList.contains(this!.substring(0, 3))) {
      if (this!.length <= 6) {
        return '${this!.substring(0, 3)}-${this!.substring(3, this!.length)}';
      } else {
        return '${this!.substring(0, 3)}-${this!.substring(3, 7)}-${this!.substring(7, this!.length)}';
      }
    } else if (internetNumberList.contains(this!.substring(0, 3))) {
      if (this!.length <= 7) {
        return '${this!.substring(0, 3)}-${this!.substring(3, this!.length)}';
      } else {
        return '${this!.substring(0, 3)}-${this!.substring(3, 7)}-${this!.substring(7, this!.length)}';
      }
    } else if (this!.length == 4 && commericialNumberList.contains(this!.substring(0, 4))) {
      return '${this!.substring(0, 4)}-${this!.substring(4, this!.length)}';
    } else {
      return this!;
    }
  }

  /// Parses string and returns integer value.
  ///
  /// You can set an optional [radix!] to specify the numeric base.
  /// If no [radix!] is set, it will use the decimal system (10).
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// '2'.toInt();     // 2
  /// 'invalid'.toInt(); // 0
  /// ```
  int toInt() {
    try {
      if (this == null) return 0;
      return int.parse(this!, radix: 10);
    } catch (error) {
      return 0;
    }
  }

  /// Parses string and return double value.
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// '2.1'.toDouble();     // 2.1
  /// 'invalid'.toDouble(); // 0
  /// ```
  double toDouble() {
    try {
      if (this == null) return 0;
      return double.parse(this!);
    } catch (error) {
      return 0;
    }
  }

  /// 접두사 추가
  ///
  /// 추가할 문자 중복 시 제거(deduplication = true로 사용)
  String toPrefixAppend(String appendData, {bool deduplication = false}) {
    try {
      if (this == null || this!.isEmpty) return '';

      if (deduplication) {
        return appendData + this!.replaceAll(appendData, '');
      } else {
        return appendData + this!;
      }
    } catch (error) {
      return '';
    }
  }

  /// 접미사 추가
  ///
  /// 추가할 문자 중복 시 제거(deduplication = true로 사용)
  String toSuffixAppend(String appendData, {bool deduplication = false}) {
    try {
      if (this == null || this!.isEmpty) return '';
      if (deduplication) {
        return this!.replaceAll(appendData, '') + appendData;
      } else {
        return this! + appendData;
      }
    } catch (error) {
      return '';
    }
  }

  String toString2() {
    try {
      if (this == null) return '';
      return this!.toString();
    } catch (error) {
      return '';
    }
  }

  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allAfter('=');                 // '1'
  /// 'i like turtles'.allAfter('like')        // ' turtles'
  /// 'i   like cats'.allAfter(RegExp('\\s+')) // 'like cats'
  /// ```
  String allAfter(Pattern pattern) {
    if (this == null) return '';
    var matchIterator = pattern.allMatches(this!).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return this!.substring(match.start + length);
    }
    return '';
  }

  /// Searches the string for the last occurrence of a [pattern] and returns
  /// everything before that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allBefore('=');          // 'value'
  /// 'i like turtles'.allBefore('like') // 'i '
  /// ```
  String allBefore(Pattern pattern) {
    if (this == null) return '';
    var matchIterator = pattern.allMatches(this!).iterator;

    Match? match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) {
      return this!.substring(0, match.start);
    }
    return '';
  }

  /// Searches the string for the first occurrence of [startPattern] and the
  /// last occurrence of [endPattern]. It returns the string between that
  /// occurrences.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'i like turtles'.allBetween('i ', ' turtles') // 'like'
  /// ```
  String allBetween(Pattern startPattern, Pattern endPattern) {
    return allAfter(startPattern).allBefore(endPattern);
  }

  /// 생년월일 확인(1900년생 이후)
  bool get isBirthDay {
    if (this == null ||
        double.tryParse(toString().replaceAll('.', '')) == null ||
        this!.replaceAll('.', '').length != 8) return false;

    String data = this!.replaceAll('.', '');

    DateTime date = DateTime.parse(data);

    String y = date.year.toString().padLeft(4, '0');
    String m = date.month.toString().padLeft(2, '0');
    String d = date.day.toString().padLeft(2, '0');

    if (y.toInt() <= 1900) return false;

    final originalFormatString = "$y$m$d";

    return data == originalFormatString;
  }

  /// null이거나 empty인 경우 true
  bool get isNullEmpty => this == null || this!.isEmpty;

  /// null이 아니고 비어있지 않은 경우 true
  bool get isNotNullEmpty {
    if (this != null) {
      if (this != '') {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  /// String postposition은 '은/는', '이/가', '을/를', '과/와', '으로/로'중 하나를 넣어줍니다.
  ///  - 이 중에 없는 것을 넣으면 '종성있음/종성없음' 으로 처리됩니다.
  String toPostposition(String postposition) {
    if (this == null || this!.isEmpty) return '';
    final splitted = postposition.split('/');
    if (splitted.length < 2) {
      throw ArgumentError('toPostposition 인자값에 오류가 생겼습니다.');
    }

    var last = this!.runes.last;
    if (_isKorean(last)) {
      bool result = ((last - 0xac00) ~/ (28 * 21)) < 0 ? false : (((last - 0xac00) % 28 != 0) ? true : false);
      return result ? this! + splitted[0] : this! + splitted[1];
    } else {
      return this! + splitted[1];
    }
  }

  bool _isKorean(int code) => (code >= 12593 && code <= 12643)
      ? true
      : (code >= 44032 && code <= 55203)
          ? true
          : false;

  String camelCaseToUnderscore() {
    if (this == null) return '';
    String camelCase = this!;
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    String underscoreCase = camelCase.replaceAllMapped(exp, (Match m) => ('_${m.group(0)}')).toLowerCase();
    return underscoreCase;
  }

  DateTime toDateTime(){
    if (this == null) DateTime.now();
    return DateTime.parse(this!).toLocal();
  }
}
