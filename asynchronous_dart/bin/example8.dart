void main(List<String> args) async {
  await for (final name in getAllNames()) {
    print(name);
  }
}

Stream<String> getFemaleNames() async* {
  yield "ayşe";
  yield "fatma";
  yield "buse";
}

Stream<String> getMaleNames() async* {
  yield "ahmet";
  yield "mehmet";
  yield "ali";
}

Stream<String> getAllNames() async* {
  yield* getMaleNames();
  yield* getFemaleNames();
}
//as we see asterics take the stream of strings and gives us the strings
