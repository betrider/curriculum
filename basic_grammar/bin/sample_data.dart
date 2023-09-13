// ignore_for_file: unused_field, unused_element

/// 열거형(요일)
enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
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

/// method 예제
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

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
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
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

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
  final String name;
  /// private 멤버 변수
  final int _age;

  /// 생성자
  const Person({
    this.name = '홍길동',
  }) : _age = 55;

  /// public 멤버 함수
  void eat(){
    print('eat');
  }

  /// private 멤버 함수
  void _sleep(){
    print('sleep');
  }
}
