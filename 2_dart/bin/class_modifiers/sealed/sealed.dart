import 'dart:developer';

// ERROR: Cannot be instantiated(sealed 클래스 인스턴스화 불가능)
// Vehicle myVehicle = Vehicle();

// Subclasses can be instantiated
// Vehicle myCar = Car();

/// sealed - switch 문에서 컴파일 오류 잡을 수 있음
sealed class Vehicle {}

class Car extends Vehicle {
  final String aa;
  final String bb;
  Car(this.aa, this.bb);
}

class Truck extends Vehicle {
  final String cc;
  Truck(this.cc);
}

class Motorcycle extends Vehicle {
  final String dd;
  final String ee;
  Motorcycle(this.dd, this.ee);
}

class Bicycle extends Vehicle {}

void test(Vehicle vehicle) {
  var aa = switch (vehicle) {
    Car(aa: var aa, bb: var bb) => '111 : $aa, $bb',
    Truck(cc: var ccc) => ccc,
    _ => '333',
  };
  log(aa);
}
