void main() {
  final numbers = [1, 3, 3, 9, 5, 1, 7, 7];
  var results = firstWhere(numbers, (x) => x % 2 == 0, orElse: () => -1);
  print(results);
}

T firstWhere<T>(
  List<T> list,
  bool Function(T) fnx, {
  required T Function() orElse,
}) {
  for (var item in list) {
    if (fnx(item)) {
      return item;
    }
  }
  return orElse();
}
