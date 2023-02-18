void main(List<String> args) {
  final person = Person();

  print(person.name);
  print(person.name);
  print(person.name);
}

class Person {
  late String name = giveName();

  String giveName() {
    print("giving name");
    return "ben";
  }
}
