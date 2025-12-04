// void main() {
//   final numbers = <int>[1, 2, 3, 5, 6, 7];

//   final texts = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'];

//   final numberMap = <String, int>{
//     '0': 1,
//     '1': 2,
//     '2': 3,
//     '3': 5,
//     '4': 6,
//     '5': 7,
//   };

//   // var results = numbers.where((x) => x < 6);
//   var results = whereFunction(numbers, (x) => x < 6);
//   print(results);

//   var stringResults = whereFunction(texts, (x) {
//     if (x == 'a' || x == 'e' || x == 'o' || x == 'u' || x == 'i') {
//       return true;
//     } else {
//       return false;
//     }
//   });

//   print(stringResults);

//   var resultMap = numberMap.values.where((x) => x > 5);
//   // print(resultMap);
// }

// List<dynamic> whereFunction(List<dynamic> list, Function(dynamic) fnx) {
//   List<dynamic> result = [];
//   for (dynamic item in list) {
//     if (fnx(item)) {
//       print(item);
//       result.add(item);
//     }
//   }
//   return result;
// }

// List<dynamic> whereFunction2(List<dynamic> list, Function(dynamic) fnx) {
//   List<dynamic> results = [];
//   for (dynamic item in list) {
//     if (fnx(item)) {
//       results.add(item);
//     }
//   }
//   return results;
// }

// The clean code

void main() {
  final numbers = <int>[1, 2, 3, 4, 6, 7, 8, 9];
  var results = where(numbers, (x) => x % 2 == 0);
  print(results);
}

List<T> where<T>(List<T> list, bool Function(T) fnx) {
  var results = <T>[];
  for (var item in list) {
    if (fnx(item)) {
      results.add(item);
    }
  }

  return results;
}
