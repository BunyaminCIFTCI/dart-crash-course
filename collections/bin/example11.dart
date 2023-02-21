void main(List<String> args) {
  giveAddedList();
}

void giveAddedList() {
  final list1 = [1, 5, 3];
  final list2 = [7, 5, 5];

  final list3 = list1;
  list3.addAll(list2);
  print(list3);
  print(list1);
}
