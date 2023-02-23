void main(List<String> args) {
  print(AnimalType.Rabbit.nameContainsUpperCaseLetters);
}

extension on Enum {
  bool get nameContainsUpperCaseLetters => name.contains(RegExp(r"[A-Z]"));
}

enum AnimalType { cat, dog, Rabbit }
