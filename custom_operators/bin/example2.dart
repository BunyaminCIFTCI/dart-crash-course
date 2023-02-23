void main(List<String> args) {
  print("Foo Bar" - "Foo");
}

extension Remove on String {
  String operator -(String other) {
    return replaceAll(
        other, ""); // here we do not have to say this.replaceAll()
  }
}
