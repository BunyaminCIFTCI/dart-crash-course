// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

void main(List<String> args) {
  final person = Person(name: "Ben", age: 22);
  print(ShortDescription(person).description);
  print(LongDescription(person).description);
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });
}

extension ShortDescription on Person {
  String get description => "$name $age";
}

extension LongDescription on Person {
  String get description => "$name is  $age years old";
}


// naming them is important otherwise we may get an error for the same name of the methods of the same data types
// this process is called as extension override

