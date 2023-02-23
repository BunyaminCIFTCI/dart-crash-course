void main(List<String> args) async {
  await for (final number in numbers(end: 10, f: giveOnlyEven)) {
    print(number);
  }
}

typedef IsIncluded = bool Function(int value);

bool giveOnlyEven(int number) => number % 2 == 0;
bool giveOnlyOdd(int number) => number % 2 != 0;

Stream<int> numbers({int start = 0, int end = 10, IsIncluded? f}) async* {
  for (int i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
