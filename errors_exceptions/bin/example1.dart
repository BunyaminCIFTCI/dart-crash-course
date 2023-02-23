void main(List<String> args) {
  try {
    final person = Person(age: -1);
  } on InvalidAgeException catch (e, stackTrace) {
    print(e);
    print(stackTrace); // to see the where the exception comes from
  }
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age, "age can not be less than 0");
    }
  }
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);

  @override
  String toString() {
    return "InvalidAgeException : $message,which is $age";
  }
}
