void main() {
  double tempFarenheit = 86;
  int tempCelcius = ((tempFarenheit - 32) / 1.8).toInt();

  print("${tempCelcius}C");
}
