void main() {
  // List? dummyList = List.filled(5, null);
  // dummyList[0] = "hi there";
  // dummyList[1] = 1;
  // dummyList[2] = true;
  // print(dummyList);
  // List? dummyList2 = ["hi there", 2, true];
  // print(dummyList2);

  var values = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var i in values) {
    sum += i;
  }
  print(sum);
}
