void main(List<String> args) {
  print(1.to(9, inclusive: true));
  print(10.to(2));
}

extension on int {
  Iterable<int> to(int end, {bool inclusive = false}) => end > this
      ? [for (int i = this; i < end; i++) i, if (inclusive) end]
      : [for (int i = this; i > end; i--) i, if (inclusive) end];
}
