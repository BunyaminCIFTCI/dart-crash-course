void main(List<String> args) {
  Car car = Car();
  try {
    Car car = Car();
    car.drive(speed: -4);
  } catch (e) {
    print(e.toString());
  }
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int speed) {
    if (speed < 0) {
      throw Exception("the speed can not be negative");
    }
    _speed = speed;
  }

  void drive({required int speed}) {
    this.speed = speed;
    print("speeding up");
  }
}

//be cautios about this.speed part because it calls the setter not getter
