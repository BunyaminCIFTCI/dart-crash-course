void main(List<String> args) {
  ///iterables are important for the performance because they do only needed actions
  ///when we map over a list the returned value becomes iterable because program thinks that maybe the function of map is heavy and
  ///it waits until the needed parts are called for example with using iterableName.take(number) function which takes only number elements from that iterable and also
  ///does the map function work only number times

  final list = ["kagan", "emir", "baran", "temir"];

  final iterable = list.map((e) {
    print("map function is called");
    return e.toUpperCase();
  });

  for (final str in iterable.take(2)) {
    print(str);
  }
}
