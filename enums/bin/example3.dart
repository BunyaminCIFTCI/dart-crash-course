void main(List<String> args) {
  final dog = AnimalType.dog.sayRunning();
}

enum AnimalType {
  dog,
  cat,
  rabbit; // to use functions always add ; to the last case

  void sayRunning() {
    print("$this is running");
  }
}
