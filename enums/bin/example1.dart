void main(List<String> args) {
  final pamuk = Animal(name: "pamuk", type: AnimalType.cat);

  switch (pamuk.type) {
    case AnimalType.rabbit:
      print("that is a rabbit");
      break;
    case AnimalType.dog:
      print("that is a dog");
      break;
    case AnimalType.cat:
      print("that is a cat");
      break;
  }
}

// we better to use switch statements instead of if else statements for enums because vscode is gonna fill the missing cases
enum AnimalType { rabbit, dog, cat }

class Animal {
  final String name;
  final AnimalType type;

  Animal({required this.name, required this.type});
}
