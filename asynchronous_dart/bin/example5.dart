void main(List<String> args) async {
  await for (final char
      in getNames().asyncExpand((name) => getCharacters(name))) {
    print(char);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 200));
  yield "baran";
  await Future.delayed(const Duration(milliseconds: 100));
  yield "temir";
}
