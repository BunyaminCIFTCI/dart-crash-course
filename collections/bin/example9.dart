import 'package:collection/collection.dart';

void main(List<String> args) {
  final list = [1, 3, 4];

  var otherList = UnmodifiableListView(list);
}
//we have also UnmodifiableMapView