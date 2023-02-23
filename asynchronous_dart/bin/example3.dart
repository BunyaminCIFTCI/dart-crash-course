void main(List<String> args) async {
  final bla = await giveFullName().then((value) => giveLength(
      value)); // value is the property that returned from the first function

  print(bla);
}

Future<String> giveFullName() =>
    Future.delayed(const Duration(seconds: 1), () => "My Name");

Future<int> giveLength(String str) =>
    Future.delayed(const Duration(seconds: 1), () => str.length);
