class ABC {
  void test() {
    // ...
  }
}

class Employee {
  void clockIn() {
    // ...
  }
}

mixin Medical {
  int takeTemperature() {
    return 55;
  }
}

// 'with' 키워드를 통해 클래스에 믹스인을 사용하세요
class Nurse with Medical implements Employee {
  // 필수
  @override
  void clockIn() {
    // ...
  }

  void performSurgery() {
    // ...
  }
}

class Doctor extends Employee with Medical {
  // 선택
  @override
  void clockIn() {
    // ...
  }

  void performSurgery() {
    // ...
  }
}

class Bartender extends Employee with Medical implements ABC {
  // 필수
  @override
  void test() {
    // ...
  }
}

// mixin은 다른 클래스 계층에서 클래스의 코드를 재사용하는 방법입니다.
void main() {
  Doctor myDoctor = Doctor();
  myDoctor.performSurgery();
  myDoctor.clockIn();
  myDoctor.takeTemperature();
}
