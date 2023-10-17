import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var oldText = oldValue.text;
    var newText = newValue.text;
    var selectionIndex = newValue.selection.end;

    // '-'이 삭제될 시 앞에 한문자를 더 삭제합니다.
    if (oldText.length > newText.length && oldValue.composing == TextRange.empty) {
      if (oldText.length > selectionIndex && oldText[selectionIndex] == '-') {
        if (selectionIndex > 0 && isDigit(newText[selectionIndex - 1])) {
          newText = newText.substring(0, selectionIndex - 1) + newText.substring(selectionIndex, newText.length);
          selectionIndex--;
        }
      }
    }

    // replaceAll을 해줍니다. selectionIndex값 때문에 for loop로 해줍니다.
    String text = '';
    for (var i = newText.length - 1; i >= 0; i--) {
      // 역순 for loop로 해야 selectionIndex--문이 다음번에 i < selectionIndex에 영향을 미치지 않습니다.
      if (isDigit(newText[i])) {
        text = newText[i] + text;
      } else {
        if (i < selectionIndex) selectionIndex--;
      }
    }
    // 문자열 길이가 전화번호 길이만큼 잘라줍니다.
    if (text.startsWith('02') && text.length > 10) {
      text = text.substring(0, 10);
      if (selectionIndex > 10) selectionIndex = 10;
    } else if (text.length > 11) {
      text = text.substring(0, 11);
      if (selectionIndex > 10) selectionIndex = 11;
    }

    // 조건부에 맞는 경우 자동 하이펀 추가
    if (text.length >= 3 && text.startsWith('010')) {
      // 지역번호(010, 070)
      if (text.length >= 7) {
        text = '${text.substring(0, 3)}-${text.substring(3, 7)}-${text.substring(7, text.length)}';
      } else {
        text = '${text.substring(0, 3)}-${text.substring(3, text.length)}';
      }
      if (selectionIndex >= 7) {
        selectionIndex += 2;
      } else if (selectionIndex >= 3) {
        selectionIndex++;
      }
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }

  bool isDigit(String ch) => ch.compareTo('0') >= 0 && ch.compareTo('9') <= 0;
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // 지우는 경우 계산 제외
    if (oldValue.text.length > newValue.text.length) return newValue;

    // 1.숫자만 포함되어 있는지 확인
    final numericRegex = RegExp(r'^[0-9]+$');
    if (!numericRegex.hasMatch(newValue.text)) return oldValue;

    // 2.입력 값의 길이가 8이하인지 확인
    if (newValue.text.length > 8) return oldValue;

    // 입력된 텍스트를 가져옵니다.
    final String text = newValue.text;

    bool isYearValid = true;
    bool isMonthYear = true;
    bool isDayValid = true;

    // YYYY
    if (newValue.text.length <= 4) {
      final String year = text.substring(0, newValue.text.length);
      isYearValid = _isValidYear(year);
    }

    // MM
    if (newValue.text.length > 4 && newValue.text.length <= 6) {
      final String month = text.substring(4, newValue.text.length);
      isMonthYear = _isValidMonth(month);
    }

    // DD
    if (newValue.text.length > 6 && newValue.text.length <= 8) {
      final String year = text.substring(0, 4);
      final String month = text.substring(4, 6);
      final String day = text.substring(6, newValue.text.length);
      isDayValid = _isValidDay(year, month, day);
    }

    // 최종 확인
    if (isYearValid && isMonthYear && isDayValid) {
      return newValue;
    } else {
      return oldValue;
    }
  }

  // 년도의 유효성을 확인하는 함수입니다.
  bool _isValidYear(String year) {
    final int yearInt = int.tryParse(year)!;
    if (year.length == 1) {
      int currentYear = int.parse(DateTime.now().year.toString().substring(0, 1));
      return yearInt >= 1 && yearInt <= currentYear;
    } else if (year.length == 2) {
      int currentYear = int.parse(DateTime.now().year.toString().substring(0, 2));
      return yearInt >= 19 && yearInt <= currentYear;
    } else if (year.length == 3) {
      int currentYear = int.parse(DateTime.now().year.toString().substring(0, 3));
      return yearInt >= 190 && yearInt <= currentYear;
    } else {
      int currentYear = DateTime.now().year;
      return yearInt >= 1900 && yearInt <= currentYear;
    }
  }

  // 월의 유효성을 확인하는 함수입니다.
  bool _isValidMonth(String month) {
    final int monthInt = int.tryParse(month)!;
    if (month.length == 1) {
      return monthInt >= 0 && monthInt <= 1;
    } else {
      return monthInt >= 1 && monthInt <= 12;
    }
  }

  // 일자의 유효성을 확인하는 함수입니다.
  bool _isValidDay(String year, String month, String day) {
    final int yearInt = int.parse(year);
    final int monthInt = int.parse(month);
    final int dayInt = int.tryParse(day)!;

    // 첫번째 날짜만 들어온 경우
    if (day.length == 1) {
      // 첫번째 일자 체크
      if (dayInt == 0 || dayInt == 1 || dayInt == 2 || dayInt == 3) {
        // 2월인 경우 예외처리
        if (dayInt == 3 && monthInt == 2) {
          return false;
        }
      } else {
        return false;
      }
    }

    // 두번째 날짜가 들어온 경우
    if (day.length == 2 && dayInt < 1) {
      return false;
    }

    // 2월에 윤월 확인
    if (monthInt == 2) {
      if (_isLeapYear(yearInt)) {
        return dayInt <= 29;
      } else {
        return dayInt <= 28;
      }
    }

    // 월별 일자 리스트
    final List<int> daysInMonth = <int>[
      31, // January
      28, // February
      31, // March
      30, // April
      31, // May
      30, // June
      31, // July
      31, // August
      30, // September
      31, // October
      30, // November
      31, // December
    ];

    return dayInt <= daysInMonth[monthInt - 1];
  }

  // 윤년인지 확인하는 함수입니다.
  bool _isLeapYear(int year) {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }
}
