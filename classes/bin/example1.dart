void main(List<String> args) {
  const person1 = Person(name: "foo", age: 22);
  const foo = Person.foo();

  const person2 = Person.named(age: 12, name: "babe");
  const person3 = Person.jack(33);

  const john = Person.other(age: 12);
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  const Person.named({required this.age, required this.name});

  const Person.foo()
      : name = "Foo",
        age = 22;

  const Person.jack(this.age) : name = "Jack";

  const Person.other({String? name, int? age})
      : name = name ?? "John",
        age = age ?? 23;
}
