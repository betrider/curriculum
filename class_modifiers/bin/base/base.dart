// Can be constructed
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// Can be extended
base class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    print('car : $meters');
  }
}

// ERROR: Cannot be implemented(base 클래스 외부에서 구현 불가능)
// base class MockVehicle implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     print('MockVehicle : $meters');
//   }
// }
