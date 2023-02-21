void main(List<String> args) {
  final person = Person(name: "Temir", car: Car.teslaModelX);
}

class Person {
  final String name;
  final Car car;

  const Person({required this.name, required this.car});
}

enum Car {
  teslaModelX(
      manufacturer: "Tesla",
      year: 2023,
      model:
          "Model X"), // after every case use comma and for the last case use ;
  teslaModelY(manufacturer: "Tesla", year: 2022, model: "Model Y");

  final String manufacturer;
  final String model;
  final int year;

  const Car(
      {required this.manufacturer, required this.model, required this.year});
}
