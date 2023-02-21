void main(List<String> args) {
  const List<String> names = ["ben", "temir", "kagan", "baran"];
  final list = names.where(giveWordStartsWithB).toList();
  print(list);
}

bool giveWordStartsWithB(String value) => value.startsWith("b");
