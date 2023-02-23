import 'dart:async';

void main(List<String> args) async {
  await getAllNamesWithBroadcasting();
}

Future<void> getAllNamesWithBroadcasting() async {
  late final StreamController<String> controller;

  controller = StreamController<String>.broadcast();

  final channel1 = controller.stream.listen((name) {
    print("name is $name");
  });

  final channel2 = controller.stream.listen((name) {
    print("name is $name");
  });

  controller.sink.add("Jack");
  controller.sink.add("Jone");
  controller.sink.add("Marie");

  controller.close();

  controller.onCancel = () {
    channel1.cancel();
    channel2.cancel();
  };
}
