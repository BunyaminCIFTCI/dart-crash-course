void main(List<String> args) async {
  print(await getUserName());
  //print(await getPhoneNumber());
  print(await getUserCity());
}

Future<String> getUserName() async => "hello from";

Future<String> getUserAddress() => Future.value("istanbul");

Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 3), () => "some phone number");

Future<String> getUserCity() async {
  await Future.delayed(const Duration(
      seconds:
          1)); // if we do not use await then it is not gonna wait for one second
  return "Users fucking city";
}
