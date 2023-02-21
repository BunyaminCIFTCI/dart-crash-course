void main(List<String> args) {
  final info = {"name": "Ben", "age": 22};

  info["city"] = "istanbul";
  info["name"] = "temir";
  info.putIfAbsent("city", () => "ankara");
  print(info);
}
