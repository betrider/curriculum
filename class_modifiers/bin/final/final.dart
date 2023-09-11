import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited(final 클래스 외부에서 확장 불가능)
// class Car extends Vehicle {
//   int passengers = 4;
//   // ...
// }

// ERROR: Cannot be implemented(final 클래스 외부에서 구현 불가능)
// class MockVehicle implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // ...
//   }
// }
