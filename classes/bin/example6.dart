void main(List<String> args) {}

class Vehicle {
  const Vehicle();
  factory Vehicle.car() {
    return Car();
  }
  factory Vehicle.truck() {
    return Truck();
  }
}

class Car extends Vehicle {
  const Car();

  /*factory Car.named() {
    return Vehicle();
  }*/ // this one gives error
}

class Truck extends Vehicle {}
