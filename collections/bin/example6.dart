void main(List<String> args) {
  Person person1 = Person(name: "ben", age: 22);
  Person person2 = Person(name: "ben", age: 22);

  print(person1 == person2);
}

class Person {
  final String name;

  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => "name: $name, age:$age";

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object object) =>
      identical(this, object) ||
      object is Person && object.name == name && object.age == age;
}
