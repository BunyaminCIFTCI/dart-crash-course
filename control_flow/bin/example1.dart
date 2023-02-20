void main(List<String> args) {
  final Map<String, dynamic> myMap = {"first": 1, "name": "Ben"};

  for (final entry in myMap.entries) {
    print(" ${entry.key}: ${entry.value}");
  }
}
