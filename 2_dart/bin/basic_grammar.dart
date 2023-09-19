// ignore_for_file: unused_local_variable, dead_code, unnecessary_type_check, equal_elements_in_set, unnecessary_null_comparison, unused_field, unused_element

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';

import 'package:logger/logger.dart';

import 'class_modifiers/abstract/abstract.dart';
import 'sample_data.dart';

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

  // 8.조건문
  conditionalStatementFunction();

  // 9.반복문
  loopFunction();

  // 10.오류 처리(error handling)
  errorHandlingFunction();

  // 11.Parameters(매개변수), Named parameters(명명된 매개변수), Optional positional parameters(선택적 매개변수)
  parametersFunction();

  // 12.class(클래스)
  classFunction();

  // 13.async(비동기)
  asyncFunction();

  // 14.isolate(격리)
  isolateFunction();

  // 15.null safety(널 안정성)
  nullSafetyFunction();

  // 16.serialize(직렬화)
  serializeFunction();

  // 17.extension(확장)
  extensionFunction();

  // 18.enums(열거형)
  enumsFunction();

  // 19.접근지정자
  accessModifierFunction();

  // 20.상속
  inheritanceFunction();

  // 21.팩토리
  factoryFunction();

  // 22.패턴
  patternFunction();

  // 23.포인터
  callByValueCallByReferenceFunction();

  // 기타.dynamic과 object 차이점
  dynamicVsObjectDifferenceFunction();

  // 기타.로그
  logFunction();

  print('기초 문법 종료');
}

/// 1.변수
void variablesFunction() {
  /// 일반 유형 → ----------------------------------- ↓ ↓

  dynamic dynamicValue = 'dart'; // 가변타입(null o)
  dynamicValue = 55;

  var varValue = 'dart'; // 가변타입(null x)
  // varValue = 55; //! 다른 타입으로 변경 불가

  String stringValue = 'dart'; // 문자열

  /// 정수 또는 소수
  num numValue = 15;
  numValue = 75.5;

  /// 정수
  int intValue = 15;

  /// 소수
  double doubleValue = 75.5;

  /// 논리연산자
  bool boolValue = false;

  /// 날짜
  DateTime datetimeValue = DateTime.now();

  /// Runes(생략)

  /// Symbol(생략)

  /// 컬렉션 → ----------------------------------- ↓ ↓

  /// List
  ///
  /// 순서 o
  /// 중복 o
  List<String> listValue = ['1', '2', '3', '3']; // ['1','2','3','3']

  /// Set
  ///
  /// 순서 x
  /// 중복 x
  Set<String> setValue = {'1', '2', '3', '3'}; // {'1','2','3'}

  /// Map
  ///
  /// Key(키)랑 Value(값)으로 나눠서 데이터 관리
  /// 순서x
  /// 중복x
  Map<String, String> mapValue = {'key1': 'value1'}; // {'key1':'value1'}

  /// 기타 → ----------------------------------- ↓ ↓

  /// 스프레드 연산자
  ///
  /// 스프레드 연산자는 컬렉션에 여러 값을 삽입하는 간결한 방법을 제공합니다.
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1]; // [0, 1, 2, 3]

  /// 제어 흐름 연산자
  var list3 = ['Home', if (false) 'Furniture']; // ['home']
  var list4 = ['Home', if ('hero' case 'hero') 'Furniture']; // ['home', 'Furniture']
  var list5 = [
    'Home',
    for (var i in ['1', '2', '3']) 'home$i'
  ]; // ['home', 'home1', 'home2', 'home3']

  /// 제네릭
  ///
  /// 데이터의 타입을 외부에서 지정하는 기법
  ///
  /// extends를 통해 타입 제한
  var list6 = [];
  var list7 = <String>[];
  var list8 = <int>[];
  var set1 = <String>{};
  var map1 = <String, int>{};

  var genericFunction1 = genericFunction<bool>([true, false, true]);
  var genericFunction2 = genericFunction<String>(['dart', 'flutter']);
  var genericFunction3 = genericFunction<int>([1, 5, 4]);

  GenericClass genericClass1 = GenericClass<num>(5.5);
  GenericClass genericClass2 = GenericClass<int>(5);
  GenericClass genericClass3 = GenericClass<double>(5.5);
  // Foo foo4 = Foo<String>(5.5); // error

  /// typedef
  ///
  /// 데이터 타입을 새롭게 정의하는 키워드

  /*
    typedef IntList = List<int>;
    IntList il = [1, 2, 3];
  */
}

/// 2.캐스팅
void castingFunction() {
  //* 업캐스팅(불필요) 자식클래스 -> 부모클래스
  //* 다운캐스팅 부모클래스 -> 자식클래스

  String stringValue = '111';
  num numValue = 111;
  int intValue = 1;
  double doubleValue = 11;
  bool boolValue = true;
  DateTime dateTimeValue = DateTime.now();
  DayOfWeek enumValue = DayOfWeek.friday;

  /// -> string
  stringValue = numValue.toString();
  stringValue = intValue.toString();
  stringValue = doubleValue.toString();
  stringValue = enumValue.toString(); // DayOfWeek.friday(x)
  stringValue = enumValue.name; // friday(o)

  stringValue = '111'; // 초기화

  /// -> num
  numValue = 15;
  numValue = 7.5;
  numValue = int.parse(stringValue);
  numValue = double.parse(stringValue);
  numValue = intValue; // 업캐스팅 불필요
  numValue = doubleValue; // 업캐스팅 불필요

  /// -> int
  intValue = 15;
  intValue = int.parse(stringValue);
  intValue = numValue.toInt();
  intValue = doubleValue.toInt();

  /// -> double
  doubleValue = 15;
  doubleValue = double.parse(stringValue);
  doubleValue = intValue.toDouble();
  doubleValue = numValue.toDouble(); // numValue2 as double(다운캐스팅)

  /// -> bool
  boolValue = bool.parse('true');
  boolValue = bool.parse('false');

  /// -> DateTime
  dateTimeValue = DateTime.parse('1992-03-20 00:00:00.000');

  /// -> enum
  enumValue = DayOfWeek.strToEnum('monday'); // DayOfWeek.monday
}

/// 3.연산자
void operatorsFunction() {
  /// 산술 연산자
  print(5 + 2); // 7
  print(5 - 2); // 3
  print(5 / 2); // 2.5
  print(5 ~/ 2); // 2
  print(5 % 2); // 1

  /// 항등 및 관계 연산자
  print(2 == 2); // true
  print(2 != 3); // true
  print(3 > 2); // true
  print(2 < 3); // true
  print(3 >= 3); // true
  print(2 <= 3); // true

  /// 유형 테스트 연산자
  print(5.5 is int);
  print(5.5 is! int);
  print(5.5 is double);
  print(5.5 is num);
  print(5.5 is Object);

  /// 할당 연산자
  int intValue = 5;

  /// 논리 연산자
  print(false && false); // false
  print(true && false); // false
  print(false && true); // false
  print(true && true); // true

  /// 삼항 연산자
  bool boolValue = (1 + 1 == 5) ? true : false;
  print(boolValue);

  /// 캐스케이드

  /// 일반적인 방법
  DateTime now = DateTime.now(); // 오늘 날짜
  now = now.add(Duration(days: 7)); // 7일 추가
  now = now.subtract(Duration(hours: 3)); // 3시간 전
  print(now);

  /// 캐스케이드 방법
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

  /// 1.override
  manager.printMethod();

  /// 2.deprecated
  manager.printMethod2();

  /// 3.custom
  manager.printMethod3();
}

/// 6.라이브러리
void libraryFunction() {
  /*
    import 'package:lib1/lib1.dart'; // 사용
    import 'package:lib2/lib1.dart' as lib2; // lib2 식별자로 사용
    import 'package:lib1/lib1.dart' show foo; // lib1에서 foo만 사용
    import 'package:lib2/lib1.dart' hide foo; // lib1에서 foo만 제외
  */
}

/// 7.키워드(https://dart.dev/language/keywords)
void keywordsFunction() {
  /// const
  ///
  /// 상수(컴파일 타임)
  const int constValue = 10000;

  /// const
  ///
  /// 상수(런타임 타임)
  final DateTime finalValue = DateTime.now();

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
}

/// 8.조건문
void conditionalStatementFunction() {
  /// if - else if - else
  int intValue = 3;

  if (intValue == 1) {
    print('1');
  } else if (intValue == 2) {
    print('2');
  } else if (intValue == 3) {
    print('3');
  } else {
    print('?');
  }

  /// if - case
  List<int> listValue = [1, 2];

  if (listValue case [int x, int y]) {
    print('Was coordinate array $x,$y');
  }

  /// switch - case
  DayOfWeek enumValue = DayOfWeek.saturday;

  switch (enumValue) {
    case DayOfWeek.monday:
      print('평일');
    case DayOfWeek.tuesday:
      print('평일');
    case DayOfWeek.wednesday:
      print('평일');
    case DayOfWeek.thursday:
      print('평일');
    case DayOfWeek.friday:
      print('평일');
    default:
      print('주말');
  }
}

/// 9.반복문
void loopFunction() {
  /// for문(일반)
  ///
  /// 시작값에서 끝값까지 증가 값만큼의 간격으로 코드를 반복하며 변수는 반복값에 대입된다
  for (var i = 0; i < ['1', '2', '3'].length; i++) {
    print('i:$i');
  }

  /// for in
  ///
  /// 객체의 각 프로퍼티에 대해 변수에 하나씩 할당하는 반복문
  for (var element in ['1', '2', '3']) {
    print('element:$element');
  }

  /// while(생략)
  ///
  /// 조건식이 true 일 경우에 계속해서 반복합니다.

  /// do - while(생략)
  ///
  /// 최초 한 번 실행 후 조건식이 true 일 경우에 계속해서 반복합니다.
}

/// 10.오류 처리(error handling)
void errorHandlingFunction() {
  /// try - (on) - catch - (finally)
  ///
  /// try : 코드 실행부
  /// on : 특정 오류 조건을 잡는 부분(선택영역)
  /// catch : 나머지 오류를 잡는 부분
  /// finally : 예외처리가 끝나고 실행 할 부분(선택영역)
  try {
    print('try');
    // throw Exception('test'); // 강제 예외처리
  } on Exception catch (e) {
    print('on Exception details:\n $e');
  } catch (e, s) {
    print('catch details:\n $e');
    print('catch Stack trace:\n $s');
  } finally {
    print('finally');
  }
}

/// 11.Parameters(매개변수), Named parameters(명명된 매개변수), Optional positional parameters(선택적 위치 매개변수)
void parametersFunction() {
  //* argument 함수 혹은 메서드를 호출할 때 입력되는 실제 값
  //* parameter 함수 혹은 메서드 정의에서 나열되는 변수 명

  //* function 함수는 클래스나 객체와 상관없이 독립적으로 정의할 수 있습니다.
  //* method 메서드는 클래스의 인스턴스에 의해 호출되며, 클래스의 상태와 상호작용할 수 있습니다.

  /// Parameters(매개변수)
  var testFunction1 = parameterFunction1('argument1');

  /// Named parameters(명명된 매개변수)
  var testFunction2 = parameterFunction2(parameter1: 'argument1');

  /// Optional positional parameters(선택적 위치 매개변수)
  var testFunction3_1 = parameterFunction3('argument1');
  var testFunction3_2 = parameterFunction3('argument1', 'argument2');
}

/// 12.class(클래스)
void classFunction() {
  //* 클래스 - 설계도
  //* 객체 - 소프트웨어 세계에 구현할 대상
  //* 인스턴스 - 소프트웨어 세계에 구현된 실체

  Point p; // 클래스와 객체
  p = Point(1, 1); // 인스턴스화 (객체를 메모리에 할당)

  /// 일반 생성자
  Point point = Point(1, 10);
  print('x:${point.x} y:${point.y}');

  /// 이름있는 생성자
  Point point1 = Point.named1(2, 20);
  print('x:${point1.x} y:${point1.y}');

  /// 이름있는 생성자(명명된 매개변수 - 필수1)
  Point point2 = Point.named2(x: 3, y: 30);
  print('x:${point2.x} y:${point2.y}');

  /// 이름있는 생성자(명명된 매개변수 - 선택/기본값)
  Point point3 = Point.named3();
  print('x:${point3.x} y:${point3.y}');

  /// 이름있는 생성자(명명된 매개변수 - 필수2)
  Point point4 = Point.named4(xx: 4, yy: 40);
  print('x:${point4.x} y:${point4.y}');

  /// 클래스 호출
  print(point4.call());
  print(point4());

  /// 클래스 수정자
  print('클래스 수정자');
  Car car = Car();
  MockVehicle vehicle = MockVehicle();

  car.moveForward(5);
  vehicle.moveForward(15);
}

/// 13.async(비동기)
void asyncFunction() async {
  //* 동기 - 직렬성(코드가 끝날때 까지 나머지 코드의 실행을 멈춘다.)
  //* 비동기 - 병렬성(코드가 끝날때 까지 코드의 실행을 멈추지 않고 다음 코드를 먼저 실행한다.)

  /// future
  ///
  /// 미래에 구체적인 결과물로 실제적인 객체로 반환된다는 의미
  Future<String> versionValue = Future.delayed(Duration(seconds: 3)).then((value) => '1.0.0');
  String versionValue2 = await versionValue;
  print('versionValue2:$versionValue2');

  // ------------------------------------------------------------------------

  /// stream(일반)
  ///
  /// 데이터나 이벤트가 들어오는 통로
  /// 오직 1개만 수신가능
  /// stream이 연결될 때 까지 데이터를 모아둠

  /// StreamController를 생성합니다.
  final StreamController<String> controller1 = StreamController();

  /// Stream을 얻습니다.
  Stream<String> stream1 = controller1.stream;

  /// 데이터를 Stream으로 보냅니다.
  controller1.sink.add('stream 데이터1');
  controller1.sink.add('stream 데이터2');
  controller1.sink.add('stream 데이터3');

  /// Stream을 구독(subscribe)하여 데이터를 읽습니다.
  stream1.listen((data) {
    print('stream1 받은 데이터: $data');
  });

  // 오류
  // Stream<String> stream2 = controller1.stream;

  // 오류
  // stream2.listen((data) {
  //   print('stream2 받은 데이터: $data');
  // });

  // StreamController를 닫습니다.
  controller1.close();

  // ------------------------------------------------------------------------

  /// stream(브로드캐스트)
  ///
  /// 데이터나 이벤트가 들어오는 통로
  /// N개 수신가능
  /// stream이 연결되기 전에 들어온 데이터는 소멸됌

  /// StreamController를 생성합니다.
  final StreamController<String> controller2 = StreamController.broadcast();

  /// Stream을 얻습니다.
  Stream<String> stream2 = controller2.stream;

  /// 데이터를 Stream으로 보냅니다.
  controller2.sink.add('broadcast 데이터1');
  controller2.sink.add('broadcast 데이터2');
  controller2.sink.add('broadcast 데이터3');

  /// Stream을 구독(subscribe)하여 데이터를 읽습니다.
  stream2.listen((data) {
    print('broadcast 받은 데이터: $data');
  });

  /// StreamController를 닫습니다.
  controller2.close();
}

/// 14.isolate(격리)
void isolateFunction() {
  /// isolate(격리)
  ///
  /// 앱 내에서 모든 다트 코드는 격리되어 실행됩니다.
  /// 앱이 하나의(main isolate)만 사용합니다.
  /// 추가로 isolate를 만들어 여러 프로세서 코어에서 병렬로 코드를 실행할 수 있습니다.(다중 코어 활용)
  Isolate.spawn(entryPointFunction, 'Hello!!');
  Isolate.spawn(entryPointFunction, 'Whats up!!');
  Isolate.spawn(entryPointFunction, 'Welcome!!');
}

/// 15.null safety(널 안정성)
void nullSafetyFunction() {
  //* String? -> null
  //*         -> String

  String stringValue = 'dart';
  // stringValue = null; // 오류

  String? nullStringValue = 'dart';
  nullStringValue = null;

  // stringValue = nullStringValue; // error
  stringValue = nullStringValue ?? 'dart'; // null인 경우 'dart'입력
  // stringValue = nullStringValue!; // null이 아니다 입력
  if (nullStringValue != null) {
    // 분기처리(오토캐스팅)
    stringValue = nullStringValue;
  }

  nullStringValue = stringValue; // String -> String? (ok)

  /// list가 null인 경우
  ///
  /// list.isEmpty -> error
  /// list?.isEmpty -> null
  /// list?.isEmpty ?? false -> false
  List<String>? list;
  if (list?.isEmpty ?? true) {
    print('list is null');
  }
}

/// 16.serialize(직렬화)
void serializeFunction() {
  //* 직렬화(전송 가능한 상태로 변환) 객체 ->(encode)-> json 데이터
  //* 역직렬화(객체 상태로 변환) json 데이터 ->(decode)-> 객체

  /// json 데이터
  String jsonString = '''{
    "name": "John Smith",
    "email": "john@example.com"
  }
  ''';

  /// json 데이터 -> Map 데이터로 역직렬화
  Map<String, dynamic> userMap = jsonDecode(jsonString);

  /// userMap라는 데이터에 어떤값이 존재할 수 있는지 모름 / 자료형도 모름 / 설명주석 사용 불가
  print(userMap['name']);
  print(userMap['email']);

  /// Map 데이터 -> User 데이터로 변환
  var user = User.fromJson(userMap);
  print(user.name);
  print(user.email);
}

/// 17.extension(확장)
void extensionFunction() {
  //* extension - 일반 메서드와 함께 확장 메서드를 제안하는 키워드

  /// 오늘 날짜
  DateTime time1 = DateTime.now();

  /// 내일 날짜
  DateTime time2 = time1.add(Duration(days: 1));

  /// 어제 날짜
  DateTime time3 = time1.add(Duration(days: -1));

  print(time1 < time2); // true
  print(time1 < time3); // false
}

/// 18.enums(열거형)
void enumsFunction() {
  /// 간단한 enum
  SimpleColor simpleColor = SimpleColor.red;

  /// 발전된 enum(dart 2.17이상)
  Vehicle vehicle = Vehicle.car;
  Vehicle vehicle2 = Vehicle.bus;

  print(vehicle.carbonFootprint);
  print(vehicle.carbonPerKilometer);
  print(vehicle.compareTo(vehicle2));
}

/// 19.접근지정자(public & privite)
void accessModifierFunction() {
  /// 1.public
  ///
  /// 접근 범위에 제한 없이 모든 곳에서 접근이 가능합니다.
  ///
  /// 기본적으로 아무런 키워드가 없는 경우 public 입니다.
  Person person = Person();
  print(person.name);
  person.eat();

  /// 2.private
  ///
  /// 동일 클래스 내에서만 접근이 가능합니다.
  ///
  /// 사용법은 변수나 메서드 앞에 _(밑줄)을 붙여서 사용합니다.
  Person person2 = Person();
  // print(person2._age); // 오류
  // person2._sleep(); // 오류

  print(person2.age);
  person2.age = 10;
  print(person2.age);
}

/// 20.상속
void inheritanceFunction() {
  // 추상 클래스는 직접 인스턴스화할 수 없습니다.
  // Shape shape = Shape(); // 에러 발생

  // Circle 클래스와 Square 클래스 모두 Shape 추상 클래스를 상속받아 사용할 수 있습니다.
  Circle circle = Circle("빨간색", 5.0);
  circle.printInfo();

  Square square = Square("파란색", 4.0);
  square.printInfo();
}

/// 21.팩토리
void factoryFunction() {
  /// 사례1
  ///
  /// 자신의 클래스를 반환
  User user = User.fromJson2({'name': 'john', 'email': 'john@example.com'});

  /// 사례2
  ///
  /// 싱글톤
  ///
  /// 캐싱된 인스턴스 반환
  Manager manager1 = Manager();
  print(manager1.hashCode);
  Manager manager2 = Manager();
  print(manager2.hashCode);

  Singleton singleton1 = Singleton();
  print(singleton1.hashCode);
  Singleton singleton2 = Singleton();
  print(singleton2.hashCode);
}

/// 22.패턴(dart3.0 이상)
void patternFunction() {
  /// 1.Matching(매칭)
  ///
  /// 표현식에 들어가는 데이터는 상수여야 합니다.
  const a1 = 'a';
  const b1 = 'b';
  const c1 = 'c';
  var obj = ['a', 'b'];
  switch (obj) {
    case [a1, b1]:
      print('$a1, $b1');
    case [a1, b1, c1]:
      print('$a1, $b1, $c1');
    case ['a' || 'b', var c]:
      print(c);
  }

  /// 2.Destructuring(구조분해)
  var list = ['1', '2'];
  var [a2, b2] = list; // a2 = 1, b2 = 2

  /// 3.Variable declaration(변수 선언)
  var (a3, [b3, c3]) = ('str', [1, 2]);

  /// 4.ariable assignment(변수 할당)
  var (a4, b4) = ('left', 'right');
  (b4, a4) = (a4, b4); // Swap.
  print('$a4 $b4'); // Prints "right left".

  /// 5.switch문 표현식
  int obj2 = 51;
  switch (obj2) {
    // Matches if 1 == obj.
    case 1:
      print('one');

    // Matches if the value of obj is between the
    // constant values of 'first' and 'last'.
    case >= 0 && <= 10:
      print('in range');

    default:
      print('out range');
  }

  /// 6.switch문 논리 패턴
  var color = SimpleColor.blue;
  var isPrimary = switch (color) { SimpleColor.red || SimpleColor.blue => true, _ => false };

  /// 7.for-in element 분해
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

  /// 8.record 자료형(dart 3.0 이상)
  (String, String, {int a, bool b}) record = ('first', a: 2, b: true, 'last');
  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);

  ({String a, String b}) record2 = (a: '11', b: '22');
  print(record2.a);
  print(record2.b);

  final Foo foo = Foo(one: 'one', two: 2);
  var Foo(:one, :two) = foo;
  print('one $one, two $two');

  // 9.json 검증
  var json = {
    'user': ['Lily', 13]
  };
  var {'user': [name, age]} = json;
  print('name $name, age $age');
}

/// 값 복사, 주소 복사 차이
void callByValueCallByReferenceFunction() {
  String stringValue1 = 'ab';
  String stringValue2 = stringValue1;
  print(stringValue1.hashCode);
  print(stringValue2.hashCode);
  stringValue2 = '';
  print(stringValue1);

  num numValue1 = 50;
  num numValue2 = numValue1;
  print(numValue1.hashCode);
  print(numValue2.hashCode);
  numValue2 = 100;
  print(numValue1);

  bool boolValue1 = false;
  bool boolValue2 = boolValue1;
  print(boolValue1.hashCode);
  print(boolValue2.hashCode);
  boolValue2 = true;
  print(boolValue1);

  DateTime dateTimeValue1 = DateTime(2017, 9, 7, 17, 30);
  DateTime dateTimeValue2 = dateTimeValue1;
  print(dateTimeValue1.hashCode);
  print(dateTimeValue2.hashCode);
  dateTimeValue2 = dateTimeValue2.add(Duration(days: 50));
  print(dateTimeValue1);

  List listValue1 = [1, 2, 3];
  List listValue2 = listValue1;
  print(listValue1.hashCode);
  print(listValue2.hashCode);
  listValue2 = [1, 2]; // 새로 값을 주입하면 새로운 주소 할당(기존 링크 해제)
  // listValue2.clear(); // 기존 값을 바꾸면 원본 값이 바뀜
  print(listValue1);

  Map mapValue1 = {'a': 'aa'};
  Map mapValue2 = mapValue1;
  print(mapValue1.hashCode);
  print(mapValue2.hashCode);
  mapValue2.clear();
  print(mapValue1);

  Set setValue1 = {'a'};
  Set setValue2 = setValue1;
  print(setValue1.hashCode);
  print(setValue2.hashCode);
  setValue2.clear();
  print(setValue1);

  Foo fooValue1 = Foo(one: 'one', two: 2);
  Foo fooValue2 = fooValue1;
  print(fooValue1.hashCode);
  print(fooValue2.hashCode);
  fooValue2.two = 222;
  print(fooValue1.two);

  // ------------------------------------------------------------------------

  /// 1.문자열 - x
  String stringValue = 'ab';
  changeString(stringValue);
  print(stringValue);

  /// 2.숫자 - x
  num numValue = 12;
  changeNum(numValue);
  print(numValue);

  /// 3.논리 - x
  bool boolValue = false;
  changeBool(boolValue);
  print(boolValue);

  /// 4.날짜 - x
  DateTime datetimeValue = DateTime(2017, 9, 7, 17, 30);
  changeDateTime(datetimeValue);
  print(datetimeValue);

  /// 5.List - o
  List<String> listValue = ['a', 'b'];
  changeList(listValue);
  print(listValue);

  /// 6.Map - o
  Map<String, String> mapValue = {'a': '11', 'b': '22'};
  changeMap(mapValue);
  print(mapValue);

  /// 7.Set - o
  Set<String> setValue = {'a', 'b'};
  changeSet(setValue);
  print(setValue);

  /// 8.class - o
  Foo fooValue = Foo(one: '11', two: 22);
  changeClass(fooValue);
  print(fooValue.one);
}

void changeString(String value) {
  value = 'f';
}

void changeNum(num value) {
  value = 100;
}

void changeBool(bool value) {
  value = true;
}

void changeDateTime(DateTime value) {
  value = DateTime.now();
}

void changeList(List value) {
  value.add('4');
}

void changeMap(Map value) {
  value.clear();
}

void changeSet(Set value) {
  value.clear();
}

void changeClass(Foo value) {
  value.one = '123';
}

/// 기타.dynamic과 object 차이
void dynamicVsObjectDifferenceFunction() {
  /// 대상은 어떤 것도 가정할 수 없으며 타입도 체크하지 말라는 뜻입니다.
  /// 프로그래머가 어떤 타입인지 알고 있고 직접 처리한다고 가정하기 때문에 o.foo()와 같은 호출은 오히려 컴파일러가 경고하지 않습니다.
  dynamic dynamicValue = 'flutter';

  /// 대상이 객체 Object라는 것 외에 어떤 것도 가정할 수 없다는 뜻입니다.
  /// 객체로서 가장 기본적인 메서드 toString, hashCode를 호출할 수 있다. 하지만 o.foo() 같은 호출은 불가능합니다.
  Object objectValue = 'dart';

  // 차이점1 --------------------------------------------

  // dynamicValue = null; // null 지정 가능
  // objectValue = null; //! null 지정 불가

  // 차이점2 --------------------------------------------

  dynamic dynamicValue2 = Employee();
  Object objectValue2 = Employee();

  dynamicValue2.printMethod();
  // objectValue2.printEmp(); // 인스턴스화 불가 error

  // 차이점3 --------------------------------------------

  print(dynamicValue is String); // false
  print(objectValue is String); // true

  // 차이점4 --------------------------------------------
  String tempValue1 = dynamicValue;
  String tempValue2 = objectValue as String; // 타입 캐스팅 필수
}

/// 기타.log
void logFunction() {
  print('print message');

  print('---------------------');

  log('log message');

  print('---------------------');

  var logger = Logger();
  logger.t("Trace log");
  logger.d("Debug log");
  logger.i("Info log");
  logger.w("Warning log");
  logger.e("Error log", error: 'Test Error');
  logger.f("What a fatal log", error: 'fatal Error', stackTrace: StackTrace.current);

  print('---------------------');

  var prettyLogger = Logger(printer: PrettyPrinter());
  prettyLogger.t("Trace log");
  prettyLogger.d("Debug log");
  prettyLogger.i("Info log");
  prettyLogger.w("Warning log");
  prettyLogger.e("Error log", error: 'Test Error');
  prettyLogger.f("What a fatal log", error: 'fatal Error', stackTrace: StackTrace.current);

  print('---------------------');

  var prettyLogger2 = Logger(
    level: Level.all,
    printer: _SimpleLogPrinter(),
    output: _SimpleLogOutput(),
  );
  prettyLogger2.t("Trace log");
  prettyLogger2.d("Debug log");
  prettyLogger2.i("Info log");
  prettyLogger2.w("Warning log");
  prettyLogger2.e("Error log", error: 'Test Error');
  prettyLogger2.f("What a fatal log", error: 'fatal Error', stackTrace: StackTrace.current);
}

class _SimpleLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    List<String> lines = event.message.toString().split('\n');
    switch (event.level) {
      // live  ------------------------------------------------------------
      case Level.fatal: // 오류(system)
        return lines.map((text) => '\x1B[37m📋 $text\x1B[0m').toList();
      case Level.error: // 오류(repositoy & data)
        return lines.map((text) => '\x1B[31m📕 $text\x1B[0m').toList();
      case Level.warning: // 경고(provider)
        return lines.map((text) => '\x1B[38;5;208m📙 $text\x1B[0m').toList();
      // debug ------------------------------------------------------------
      case Level.info: // 정보
        return lines.map((text) => '\x1B[33m📔 $text\x1B[0m').toList();
      case Level.debug: // 디버그
        return lines.map((text) => '\x1B[38;5;249m📓[debug] $text\x1B[0m').toList();
      case Level.trace: // 추적(정보 x)
        return lines.map((text) => '\x1B[92m📗 $text\x1B[0m').toList();
      default:
        return lines.map((text) => '\x1B[31m📕 $text\x1B[0m').toList();
    }
  }
}

class _SimpleLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    String name = event.level.name;
    for (var line in event.lines) {
      log(
        line,
        name: event.origin.stackTrace == null ? name : '$name - ${getFileAndLineName(event.origin.stackTrace!)}',
      );
    }
  }

  String getFileAndLineName(StackTrace trace) {
    var customTrace = CustomStackTraceService(trace);
    return '${customTrace.fileName}:${customTrace.lineNumber}';
  }
}

class CustomStackTraceService {
  final StackTrace _trace;

  late String fileName;
  late String functionName;
  late String callerFunctionName;
  late int lineNumber;

  CustomStackTraceService(this._trace) {
    _parseTrace();
  }

  String _getFunctionNameFromFrame(String frame) {
    /* Just giving another nickname to the frame */
    var currentTrace = frame;

    /* To get rid off the #number thing, get the index of the first whitespace */
    var indexOfWhiteSpace = currentTrace.indexOf(' ');

    /* Create a substring from the first whitespace index till the end of the string */
    var subStr = currentTrace.substring(indexOfWhiteSpace);

    /* Grab the function name using reg expr */
    var indexOfFunction = subStr.indexOf(RegExp(r'[A-Za-z0-9]'));

    /* Create a new substring from the function name index till the end of string */
    subStr = subStr.substring(indexOfFunction);

    indexOfWhiteSpace = subStr.indexOf(' ');

    /* Create a new substring from start to the first index of a whitespace. This substring gives us the function name */
    subStr = subStr.substring(0, indexOfWhiteSpace);

    return subStr;
  }

  void _parseTrace() {
    /* The trace comes with multiple lines of strings, (each line is also known as a frame), so split the trace's string by lines to get all the frames */
    var frames = _trace.toString().split("\n");

    /* The first frame is the current function */
    functionName = _getFunctionNameFromFrame(frames[0]);

    try {
      /* The second frame is the caller function */
      callerFunctionName = _getFunctionNameFromFrame(frames[2]);
    } catch (e) {
      callerFunctionName = '';
    }

    /* The first frame has all the information we need */
    var traceString = frames[0];

    /* Search through the string and find the index of the file name by looking for the '.dart' regex */
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Z_a-z]+.dart'));

    var fileInfo = traceString.substring(indexOfFileName);

    var listOfInfos = fileInfo.split(":");

    /* Splitting fileInfo by the character ":" separates the file name, the line number and the column counter nicely.
      Example: main.dart:5:12
      To get the file name, we split with ":" and get the first index
      To get the line number, we would have to get the second index
      To get the column number, we would have to get the third index
    */

    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
  }
}
