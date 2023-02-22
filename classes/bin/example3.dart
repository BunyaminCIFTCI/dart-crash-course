void main(List<String> args) {
  int number = 20;

  void changeNumber(int number) {
    number = 12;
  }

  print(number);
}



// the innermost one takes the outermost variable
//it makes sense specially for methods of classes
