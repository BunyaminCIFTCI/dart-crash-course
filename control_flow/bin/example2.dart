import "dart:io";

void main(List<String> args) {
  do {
    stdout.write("Enter your age or type 'exit' to exit :");
    final age = stdin.readLineSync();
    print("Your age is $age");
  } while (true);
}
