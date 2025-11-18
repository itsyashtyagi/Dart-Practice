void main() {
  // var list = List<int>.filled(10, 1, growable: true);
  // list.add(2);
  // print(list);

  // var list2 = [1234, 348, "hi there"];
  // list2.add(20);
  // print(list2);

  // List<String> names = ["Raj", "John", "Rocky"]; // Mutable List
  // names[1] = "Bill"; // possible
  // names[2] = "Elon"; // possible
  // names.add("hi there");
  // names = ["hi there", "hi there"];
  // print(names);

  // const List<String> names2 = ["Raj", "John", "Rocky"]; // Immutable List
  // names2[1] = "Bill"; // not possible
  // names2[2] = "Elon"; // not possible

  // final List<String> name3 = ["Raj", "John", "Rocky"];
  // name3[1] = "yash";
  // name3[2] = "Elon";
  // name3.add("hi there");
  // name3 = ["hi there", "hi there"];
  // print(name3);

  // loops in list

  List<int> list = [10, 20, 30, 40, 50, 55, 45];
  //  var updatedList = list.forEach((item) => item * 2);
  // print(updatedList);
  var updatedList = list.map((item) => item * 2);
  // print(updatedList);
  // print(list);

  // Where in list Dart
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14, 15];

  List<int> even = numbers.where((number) => number.isEven).toList();
  // print(even);

  // Excercise
  var list2 = [1, 3, 5, 7, 9];
  var sum = 0;
  var sum2 = list2.map((item) {
    return sum = sum + item;
  }).toList();
  print(sum);
  print(sum2.last);
}
