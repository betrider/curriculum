import 'base/base.dart';

void main() {
  Car car = Car();
  MockVehicle vehicle = MockVehicle();

  car.moveForward(5);
  vehicle.moveForward(5);
}