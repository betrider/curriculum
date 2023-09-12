// ignore_for_file: unused_local_variable, dead_code, unnecessary_type_check

void main(List<String> arguments) {
  print('기초 문법 시작');

  // 1.variables(변수)
  variablesFunction();

  // 2.casting(캐스팅)
  castingFunction();

  // 3.operators(연산자)
  operatorsFunction();

  // 4.comments(주석)
  commentsFunction();

  // 5.metadata(메타데이터)
  metadataFunction();

  // 6.library(라이브러리)
  libraryFunction();

  // 7.keywords(키워드)
  keywordsFunction();

  print('기초 문법 종료');
}

/// 1.변수
void variablesFunction() {
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
}

/// 2.캐스팅
void castingFunction() {
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
  numValue2 = int.parse(stringValue2);
  numValue2 = double.parse(stringValue2);
  numValue2 = intValue2; // 업캐스팅 불필요
  numValue2 = doubleValue2; // 업캐스팅 불필요

  // -> int
  intValue2 = 15;
  intValue2 = int.parse(stringValue2);
  intValue2 = numValue2.toInt();
  intValue2 = doubleValue2.toInt();

  // -> double
  doubleValue2 = 15;
  doubleValue2 = double.parse(stringValue2);
  doubleValue2 = intValue2.toDouble();
  doubleValue2 = numValue2.toDouble(); // numValue2 as double(다운캐스팅)

  // -> bool
  boolValue2 = bool.parse('true');
  boolValue2 = bool.parse('false');

  // -> DateTime
  dateTimeValue2 = DateTime.parse('1992-03-20 00:00:00.000');

  // -> enum
  enumValue2 = DayOfWeek.strToEnum('monday'); // DayOfWeek.monday
}

/// 3.연산자
void operatorsFunction() {
  // 산술 연산자
  print(5 + 2); // 7
  print(5 - 2); // 3
  print(5 / 2); // 2.5
  print(5 ~/ 2); // 2
  print(5 % 2); // 1

  // 항등 및 관계 연산자
  print(2 == 2); // true
  print(2 != 3); // true
  print(3 > 2); // true
  print(2 < 3); // true
  print(3 >= 3); // true
  print(2 <= 3); // true

  // 유형 테스트 연산자
  print(5.5 is int);
  print(5.5 is! int);
  print(5.5 is double);
  print(5.5 is num);
  print(5.5 is Object);

  // 할당 연산자(생략)

  // 논리 연산자
  print(false && false); // false
  print(true && false); // false
  print(false && true); // false
  print(true && true); // true

  // 비트 및 시프트 연산자(생략)

  // 삼항 연산자
  bool boolValue3 = (1 + 1 == 5) ? true : false;
  print(boolValue3);

  // 캐스케이드

  // 일반적인 방법
  DateTime now = DateTime.now(); // 오늘 날짜
  now = now.add(Duration(days: 7)); // 7일 추가
  now = now.subtract(Duration(hours: 3)); // 3시간 전
  print(now);

  // 캐스케이드 방법
  DateTime now2 = DateTime.now() // 오늘 날짜
    ..add(Duration(days: 7)) // 7일 추가
    ..subtract(Duration(hours: 3)); // 3시간 전
  print(now2);
}

/// 4.주석
void commentsFunction() {
  // 한 줄 주석

  /*
   * 여러 줄 주석
   */

  /// 설명 주석

  //? 코드 설명 주석
  /// ```dart
  /// DayOfWeek enumValue2 = DayOfWeek.friday
  /// ```

  //? 이미지 설명 주석
  /// ![](https://flutter-ko.dev/images/catalog-widget-placeholder.png)
}

/// 5.메타데이터
void metadataFunction() {
  var manager = Manager();

  // 1.override
  manager.printMethod();

  // 2.deprecated
  manager.printMethod2();

  // 3.custom
  manager.printMethod3();
}

/// 6.라이브러리
void libraryFunction(){
  /*
    import 'package:lib1/lib1.dart'; // 사용
    import 'package:lib2/lib1.dart' as lib2; // lib2 식별자로 사용
    import 'package:lib1/lib1.dart' show foo; // lib1에서 foo만 사용
    import 'package:lib2/lib1.dart' hide foo; // lib1에서 foo만 제외
  */
}

/// 7.키워드(https://dart.dev/language/keywords)
void keywordsFunction() {

  /// static
  ///
  /// 클래스 레벨에서만 사용 가능(클래스 멤버)

  /*
    class Queue {
      static const initialCapacity = 16;
    }
  */

  // late
  //
  // 선언 후 초기화되는 null을 허용하지 않는 변수를 선언합니다.
  // 변수를 느리게 초기화합니다.

  /*
    late String description;
  */

  // typedef
  //
  // 데이터 타입을 새롭게 정의하는 키워드

  /*
    typedef IntList = List<int>;
    IntList il = [1, 2, 3];
  */
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
  void printMethod() {
    print("Employee Object");
  }
}

class Manager extends Employee {
  @override
  void printMethod() {
    print("Manager Object");
  }

  @Deprecated('삭제 예정입니다.')
  void printMethod2() {
    print("Manager Object2");
  }

  @Todo('Dash', 'Implement this function')
  void printMethod3() {
    print("Manager Object2");
  }
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}