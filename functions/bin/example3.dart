void main(List<String> args) {
  print(sumNumbers(
      12, 23)()); // since it is a funciton then we have to use parantheses
  final foo = sumNumbers(1, 2);
  print(foo());
}

int Function() sumNumbers(int number1, int number2) => () => number1 + number2;
