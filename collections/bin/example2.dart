void main(List<String> args) {
  const names = ["baran", "ben", "temir", "kagan"];

  const List<int?> numbers = [1, 4, 3];

  int result =
      numbers.fold(10, (previousValue, element) => previousValue + element!);
  print(result);

  names.fold("",
      (previousValue, element) => "$previousValue ${element.toUpperCase()}");
}
