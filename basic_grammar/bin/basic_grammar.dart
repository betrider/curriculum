// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  print('기초 문법 시작');

  //? variables → ---------------------------------------------------------------------- ↓ ↓

  dynamic dynamicValue = 'dart'; // 가변타입(null o)
  dynamicValue = 55;

  var varValue = 'dart'; // 가변타입(null x)
  // varValue = 55; //! 다른 타입으로 변경 불가

  String stringValue = 'dart'; // 문자열

  num numValue = 15; // 정수 또는 소수
  numValue = 75.5;

  int intValue = 15; // 정수
  double doubleValue = 75.5; // 소수

  bool boolValue = false; // 논리연산자
  DateTime datetimeValue = DateTime.now(); // 날짜

  const int constValue = 10000; // 상수(컴파일 타임)
  final DateTime finalValue = DateTime.now(); // 상수(런타임 타임)

  //? casting → ---------------------------------------------------------------------- ↓ ↓

  //* 업캐스팅(불필요) 자식클래스 -> 부모클래스
  //* 다운캐스팅 부모클래스 -> 자식클래스

  String stringValue2 = '111';
  num numValue2 = 111;
  int intValue2 = 1;
  double doubleValue2 = 11;
  bool boolValue2 = true;
  DateTime dateTimeValue2 = DateTime.now();
  DayOfWeek enumValue2 = DayOfWeek.friday;

  // -> string
  stringValue2 = numValue2.toString();
  stringValue2 = intValue2.toString();
  stringValue2 = doubleValue2.toString();
  stringValue2 = enumValue2.toString(); // DayOfWeek.friday(x)
  stringValue2 = enumValue2.name; // friday(o)

  stringValue2 = '111'; // 초기화

  // -> num
  numValue2 = 15;
  numValue2 = 7.5;
  numValue2 = int.parse(stringValue2) ;
  numValue2 = double.parse(stringValue2) ;
  numValue2 = intValue2; // 업캐스팅 불필요
  numValue2 = doubleValue2; // 업캐스팅 불필요

  // -> int
  intValue2 = 15;
  intValue2 = int.parse(stringValue2) ;
  intValue2 = numValue2.toInt();
  intValue2 = doubleValue2.toInt();

  // -> double
  doubleValue2 = 15;
  doubleValue2 = double.parse(stringValue2) ;
  doubleValue2 = intValue2.toDouble();
  doubleValue2 = numValue2.toDouble(); // numValue2 as double(다운캐스팅)

  // -> bool
  boolValue2 = bool.parse('true');
  boolValue2 = bool.parse('false');

  // -> DateTime
  dateTimeValue2 = DateTime.parse('1974-03-20 00:00:00.000');
  print('year:${dateTimeValue2.year} month:${dateTimeValue2.month} day:${dateTimeValue2.day} hour:${dateTimeValue2.hour} minute:${dateTimeValue2.minute}');

  // -> enum
  enumValue2 = DayOfWeek.strToEnum('monday');

  //? operators → --------------------------------------------------------------------- ↓ ↓

  //? comments → ---------------------------------------------------------------------- ↓ ↓

  //? metadata → ---------------------------------------------------------------------- ↓ ↓

  //? keywords → ---------------------------------------------------------------------- ↓ ↓

  print('기초 문법 종료');
}

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  static DayOfWeek strToEnum(String str) {
    return DayOfWeek.values.byName(str);
  }
}

/// dynamic과 object 차이
void dynamicAndObject() {

  /// 대상은 어떤 것도 가정할 수 없으며 타입도 체크하지 말라는 뜻이다.
  /// 프로그래머가 어떤 타입인지 알고 있고 직접 처리한다고 가정하기 때문에 o.foo()와 같은 호출은 오히려 컴파일러가 경고하지 않는다.
  dynamic dynamicValue = 'flutter';

  /// 대상이 객체 Object라는 것 외에 어떤 것도 가정할 수 없다는 뜻이다.
  /// 객체로서 가장 기본적인 메소드 toString, hashCode를 호출할 수 있다. 하지만 o.foo() 같은 호출은 불가능하다.
  Object objectValue = 'Bob';

  // 차이점1 --------------------------------------------

  // dynamicValue = null; // null 지정 가능
  // objectValue = null; //! null 지정 불가


  // 차이점2 --------------------------------------------

  dynamic dynamicValue2 = Employee();
  Object objectValue2 = Employee();

  dynamicValue2.printEmp();
  // objectValue2.printEmp(); // 인스턴스화 불가 error

  // 차이점3 --------------------------------------------

  print(dynamicValue is String); // false
  print(objectValue is String); // true

  // 차이점4 --------------------------------------------
  String tempValue1 = dynamicValue;
  String tempValue2 = objectValue as String; // 타입 캐스팅 필수
}

class Employee {
  printEmp() => print("Employee Object");
}
