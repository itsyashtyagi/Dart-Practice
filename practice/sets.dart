void main() {
  const a = <int>{1, 3};
  const b = <int>{3, 5};
  final c = a.union(b).difference(a.intersection(b));

  print(a.union(b));
  print(a.intersection(b));
  print(c);

  var sum = 0;
  for (var val in c) {
    sum += val;
  }
  print(sum);
}
