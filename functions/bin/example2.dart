void main(List<String> args) {
  print(saySomething("Benjamin", "Farmer", (p0, p1) => p0 + " " + p1));
  print(saySomething("Benjamin", "Farmer",
      giveString)); // here we do not have to write the parantheses
}

String saySomething(String firstName, String lastName,
        String Function(String, String) myFunc) =>
    myFunc(firstName, lastName);

String giveString(String str1, String str2) {
  return str1 + str2;
}


// we call this type of function as first class citizen