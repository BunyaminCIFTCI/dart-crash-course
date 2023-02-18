void main(List<String> args) {
  String? name;

  void changeName() {
    name = "name";
  }

  changeName();

  final otherName = name;

  // even we initialized our function still the type of otherName is String? not String
}
