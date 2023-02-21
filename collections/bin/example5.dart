void main(List<String> args) {
  Person person1 = Person(name: "ben", age: 22);
  Person person2 = Person(name: "ben", age: 22);

  print(person1 == person2);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => "name: $name, age:$age";
}
