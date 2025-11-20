void main() {
  print(sum([]));
  print(sum([1]));
  print(sum([1, 2, 3, 4]));
}

double sum(List<double> list) {
  double sum = 0.0;
  for (var item in list) {
    sum = sum + item;
  }
  return sum;
}
