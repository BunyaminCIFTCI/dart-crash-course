void main(List<String> args) {
  print("first");
  late final String name = giveName();
  final String anotherName = name;
  print("second");
}

String giveName() {
  print("giveName is executed");
  return "givenName";
}
