void main(List<String> arguments) {
  final person = Person();
  person.jump(speed: 10);
  print(person);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    this.speed = speed;
  }
}

// at below we should write HasSpeed and it has to be written before other mixins because it is the parent
class Person with HasSpeed, CanJump {
  @override
  double speed = 0;

  Person();

  @override
  String toString() {
    return "Can jump to $speed meters";
  }
}
