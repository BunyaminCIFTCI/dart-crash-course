void main(List<String> args) async {
  // await for (int number in getNumber()) {
  //   print(number);
  // }
}

Stream<int> getNumber() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
