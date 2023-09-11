import 'abstract/abstract.dart';

void main() {
  print('클래스 수정자');
  Car car = Car();
  MockVehicle vehicle = MockVehicle();

  car.moveForward(5);
  vehicle.moveForward(15);
}