void main(List<String> args) async {
  try {
    print(await giveFullName(firstName: "Ben", lastName: "Farmer"));
  } on FirstOrLastNameMissingException {
    print("first or last name is missing");
  } catch (e) {
    print("we have some unknown problem");
  }
}

Future<String> giveFullName(
    {required String firstName, required String lastName}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  }
  String fullName = firstName + " " + lastName;
  return Future.value(
      fullName); //since we are using Future.value then we do not have to use async keyword
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}
