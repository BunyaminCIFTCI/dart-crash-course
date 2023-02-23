import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController();
  controller.sink.add("Hello");
  controller.sink.add("World");

  await for (final word in controller.stream) {
    print(word);
  }
  controller.close();
}
