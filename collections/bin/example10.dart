void main(List<String> args) {
  print(giveNames());
}

Iterable<String> giveNames() sync* {
  yield "baran";
  yield "temirhan";
  yield "benjamin";
}

Iterable<int> giveNumbers() sync* {
  yield 2;
  yield 3;
}

Iterable<List<String>> giveMultipleNames() sync* {
  yield ["o", "b"];
}


// this type of function is called as synchronous generator

