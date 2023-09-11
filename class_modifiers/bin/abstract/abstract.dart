import 'a.dart';

// Error: Cannot be constructed(abstract 클래스 인스턴스화 불가능)
// Vehicle myVehicle = Vehicle();

class Car extends Vehicle {
  int passengers = 4;
  
  @override
  void moveForward(int meters) {
    print('car : $meters');
  }
}

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    print('vehicle : $meters');
  }
}