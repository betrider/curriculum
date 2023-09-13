// ignore_for_file: unused_field, unused_element, unnecessary_getters_setters

/// 열거형(요일)
enum DayOfWeek {
  /// 월요일
  monday,

  /// 화요일
  tuesday,

  /// 수요일
  wednesday,

  /// 목요일
  thursday,

  /// 금요일
  friday,

  /// 토요일
  saturday,

  /// 일요일
  sunday;

  /// name -> Enum.name으로 변환
  ///
  /// ``` dart
  /// var enumValue = DayOfWeek.strToEnum('monday'); // DayOfWeek.monday
  /// ```
  static DayOfWeek strToEnum(String str) {
    return DayOfWeek.values.byName(str);
  }
}

class Employee {
  void printMethod() {
    print("Employee Object");
  }
}

/// class method 예제
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

/// function 예제
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

void parameterFunction1(String parameter1) {
  // ...
}
void parameterFunction2({required String parameter1, String? parameter2, String parameter3 = 'argument3'}) {
  // ...
}
void parameterFunction3(String parameter1, [String? parameter2]) {
  // ...
}

/// constructor 예제
class Point {
  double x; // Declare instance variable x, initially null.
  double y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.

  /// 기본 생성자(필수)
  Point(this.x, this.y);

  /// 이름 있는 생성자1(필수)
  Point.named1(this.x, this.y);

  /// 이름 있는 생성자2(필수)
  Point.named2({
    required this.x,
    required this.y,
  });

  /// 이름 있는 생성자3(기본값)
  Point.named3({
    this.x = 1,
    this.y = 5,
  });

  /// 이름 있는 생성자4(필수 - 대입)
  Point.named4({
    required double xx,
    required double yy,
  })  : x = xx,
        y = yy;

  /// 이름 있는 생성자5(불가능)
  // Point.named5({
  //   required double xx,
  //   required double yy,
  // }) {
  //   this.x = xx;
  //   this.y = yy;
  // }

  /// 호출 함수
  String call() => 'call : x:$x, y:$y, z:$z';
}

/// async 예제
Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

/// isolate 예제
void entryPointFunction(var msg) {
  print('the message is :$msg');
}

/// serialize 예제
class User {
  /// 이름
  final String name;

  /// 이메일
  final String email;

  /// 생성자
  User(this.name, this.email);

  /// Map -> User
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];
  

  /// Map -> User
  /// 
  /// 팩토리 사례1
  /// 
  /// 팩토리는 자신의 클래스를 반환해야 합니다.
  /// 
  /// 초기화 목록에서 처리할 수 없는 논리를 사용하여 최종 변수를 초기화하는 것입니다.
  factory User.fromJson2(Map<String, dynamic> json) {
    return User(
      json['name'],
      json['email'],
    );
  }

  /// User -> Map
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

/// 싱글톤 클래스
/// 
/// 팩토리 사례2
/// 
/// 팩토리는 자신의 클래스를 반환해야 합니다.
/// 
/// 새 인스턴스를 항상 생성하지 않는 생성자를 구현할 때 키워드를 사용합니다.
class Singleton {
  static final Singleton _instance = Singleton._internal();

  factory Singleton() {
    return _instance;
  }

  Singleton._internal() { //클래스가 최초 생성될때 1회 발생
    //초기화 코드    
  }
}

/// extension 예제
extension DateTimeExtension on DateTime {
  bool operator >(other) => compareTo(other) > 0;
  bool operator <(other) => compareTo(other) < 0;
  bool operator >=(other) => compareTo(other) >= 0;
  bool operator <=(other) => compareTo(other) <= 0;
}

/// 간단한 enum 선언
enum SimpleColor {
  /// 빨간색
  red,

  /// 초록색
  green,

  /// 파란색
  blue,
}

/// 발전된 enum 선언
enum Vehicle implements Comparable<Vehicle> {
  /// 자동차
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),

  /// 버스
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),

  /// 오토바이
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  /// 생성자
  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

class Person {
  /// public 멤버 변수
  String name;

  /// private 멤버 변수
  int _age;

  /// getter(read)
  int get age => _age;

  /// setter(write)
  set age(int value) => _age = value;

  /// 생성자
  Person({
    this.name = '홍길동',
  }) : _age = 55;

  /// public 멤버 함수
  void eat() {
    print('eat');
  }

  /// private 멤버 함수
  void _sleep() {
    print('sleep');
  }
}

/// 상속

/// mixin 정의
///
/// 클래스에 새로운 기능을 주입하고 코드를 재사용하는 데 도움이 됩니다.
mixin LoggingMixin {
  void log(String message) {
    print('로그: $message');
  }
}

/// 추상 클래스 정의
///
/// 추상 메서드를 포함할 수 있는 클래스입니다.
/// 추상 클래스는 직접 인스턴스화할 수 없습니다.
/// 하위 클래스에서 추상 메서드를 구현해야 합니다.
abstract class Shape {
  /// 멤버 변수
  String color;

  /// 생성자
  Shape(this.color);

  /// 추상 메서드
  double calculateArea();

  /// 메서드
  void printInfo() {
    print("이 도형은 추상 클래스 Shape의 인스턴스입니다.");
    print("색상: $color");
  }
}

/// extends(확장)
///
/// 클래스의 모든 내용을 재정의 할 필요는 없습니다.
/// 추상 메서드는 필수로 재정의 해야 합니다.
class Circle extends Shape {
  /// 멤버 변수
  double radius;

  /// 생성자
  Circle(String color, this.radius) : super(color);

  /// 재정의(필수)
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  /// 부모 클래스의 메서드 오버라이딩(재정의)
  @override
  void printInfo() {
    print("원의 반지름: $radius");
    print("원의 면적: ${calculateArea()}");
    super.printInfo(); // 부모 클래스의 printInfo 메서드 호출
  }
}

/// implements(구현)
///
/// 클래스의 모든 내용을 필수로 재정의 해야 합니다.
class Square implements Shape {
  /// 멤버 변수
  double radius;

  /// 생성자
  Square(this.color, this.radius);

  /// 재정의(필수)
  @override
  String color;

  /// 재정의(필수)
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  /// 재정의(필수)
  @override
  void printInfo() {
    print("원의 반지름: $radius");
    print("원의 면적: ${calculateArea()}");
  }
}

T genericFunction<T>(List<T> ts) {
  // 초기 작업 또는 에러 확인, 그리고 ...
  T tmp = ts[0];
  // 추가적인 확인 또는 프로세싱 ...
  return tmp;
}

class GenericClass<T extends num> {
  final T data;
  GenericClass(this.data);
}

class Foo {
  final String one;
  final int two;

  Foo({
    required this.one,
    required this.two,
  });
}
