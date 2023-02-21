void main(List<String> args) {
  final allNumbers = Iterable.generate(100);

  final evenNumbers = [
    for (final i in allNumbers)
      if (i % 2 == 0) i
  ];
  print(evenNumbers);
}


// in the loop do not use curly brackets otherwise the result is gonna be awkward

