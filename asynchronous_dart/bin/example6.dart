void main(List<String> args) async {
  final sum =
      await getAllNumber().reduce((previous, element) => previous + element);

  print(sum);
}

Stream<int> getAllNumber() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
}
