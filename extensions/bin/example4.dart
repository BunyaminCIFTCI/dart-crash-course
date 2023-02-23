import 'dart:math';

void main(List<String> args) {
  print(add.sumWithRandomNumbers());
}

typedef IntFunction = int Function(
    int, int); // we can define a type like that for our extension to work with

extension on IntFunction {
  int sumWithRandomNumbers() {
    int a = Random().nextInt(100);
    int b = Random().nextInt(100);
    return this.call(a, b); // to call that function that we are working with
  }
}

int add(int a, int b) {
  return a + b;
}
