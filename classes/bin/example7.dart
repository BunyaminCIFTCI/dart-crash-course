void main(List<String> args) {
  Car car = Car();
}

abstract class Vehicle {
  final VehicleType type;
  const Vehicle({required this.type});

  void accelerate() => print("accelerating");
  void deccelerate() => print("deccelerating");
}

class Car extends Vehicle {
  const Car() : super(type: VehicleType.car);
}

// with using implements key word we do not have to write super class constructor
class Motor implements Vehicle {
  const Motor();
  @override
  void accelerate() {
    print("motor is accelerating");
  }

  @override
  void deccelerate() {
    print("motor is deccelerating");
  }

  @override
  VehicleType get type => VehicleType.motor;
}

enum VehicleType { motor, bicycle, car }
