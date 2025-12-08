void main() {
  Person p1 = Person('rahul', 21, 20.7);
  p1.printDescription();

  Person p2 = Person('rohan', 73, 60.9);
  p2.printDescription();
}

class Person {
  String? name;
  int? age;
  double? height;

  Person(this.name, this.age, this.height);

  void printDescription() {
    print(
      'The age name is $name and the age is $age and the height is $height',
    );
  }
}
