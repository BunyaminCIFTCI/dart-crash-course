void main(List<String> args) {
  final foo = Person();
  //foo.name = "foo"; we can not say that because static varibles belong to class not instances
  Person.name = "Baran"; // we do not use parantheses

  //////////////////////////

  Car car1 = Car(name: "Tesla");
  Car car2 = Car(name: "Mercedes");
  print(Car.carsInstantiaed);
}

class Person {
  static String? name = "";

  String? get giveName =>
      name; //we can not rename our getter as name so it has to has a different name than static variable itself
}

class Car {
  static int _carsInstantiated = 0;

  static int get carsInstantiaed => _carsInstantiated;

  static void _incrementInstantiaged() {
    _carsInstantiated++;
  }

  final String name;
  Car({required this.name}) {
    _incrementInstantiaged();
  }
}
