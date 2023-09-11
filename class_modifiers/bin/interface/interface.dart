// Library a.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited(interface 클래스 외부에서 확장 불가능)
// class Car extends Vehicle {
//   int passengers = 4;
//   // ...
// }

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}