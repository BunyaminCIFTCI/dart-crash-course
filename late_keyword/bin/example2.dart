void main(List<String> args) {
  late String name = giveName();
  // name = "another name";
  print(name);
}

String giveName() {
  print("func is called");

  return "some name";
}
