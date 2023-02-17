void main(List<String> args) {
  late final number = getNumber();
  print("from the main");
}

int getNumber() {
  print("giving number");
  return 10;
}

// if we dont use late keyword of course number and function is gonna run immediately

