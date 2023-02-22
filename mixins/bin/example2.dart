void main(List<String> args) {
  final person = Person(firstName: "John", lastName: "Doe");

  print(person.fullName);
  print(giveFullName(
      person)); //since Person class extends mixins then it  counted as HasFullName type,as well
}

String giveFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String
      get firstName; //for example can not declare getters like that in classes
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => firstName + lastName;
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({required this.firstName, required this.lastName});
}
