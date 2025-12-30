class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  //fromJson

  // Person.fromJson(Map<String, dynamic> json)
  //   : name = json['name'] as String,
  //     age = json['age'] as int;

  factory Person.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String && age is int) {
      return Person(name: name, age: age);
    }
    throw StateError('Could not read name or age');
  }

  //toJson

  Map<String, dynamic> toJson() {
    Map<String, dynamic> response = {};
    response['name'] = name;
    response['age'] = age;
    return response;
  }
}

void main() {
  final person = Person.fromJson({'name': 'Yash', 'age': 24});
  final json = person.toJson();
  print(json);

  final person2 = Person.fromJson({'name': 'Yash tyagi', 'age': 22});
  final json2 = person2.toJson();
  print(json2);
}
