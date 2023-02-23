// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final dad = FamilyMember(name: "Bob");
  final mom = FamilyMember(name: "Mary");
  final family = dad +
      mom; // dart looks the operator then searchs for anywhere for an extension for example to see wheter we definedn such a thing or not
  print(family);
}

class FamilyMember {
  final String name;
  const FamilyMember({
    required this.name,
  });
  @override
  String toString() {
    return "Family Member: (name)=$name";
  }
}

class Family {
  final List<FamilyMember> members;
  const Family({
    required this.members,
  });

  @override
  String toString() {
    return "Family members are $members";
  }
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
