void main(List<String> args) {
  final list = [1, 5, 6];

  print(list.sum);
}

// to use generics with extensions we firstly give a name to our extension
//we emphasize that T extends num then we do not make sum operation on string or bool values
extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((value, element) => value + element as T);
}
