import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {"ben", "kagan", "emir", "temir"};
  final names2 = {"ben", "kagan", "emir", "temir"};
  print(SetEquality().equals(names, names2));
  print(ListEquality().equals([...names], [...names2]));
}
