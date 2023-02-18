void main(List<String> args) {
  final String? name = null;
  print(name!);
  // and this one is gonna crahs our program because we are forcing it to give us the value of name which is null
}
