void main() {
  // Map<String, String> countryCapital = {
  //   'USA': 'Washington, D.C.',
  //   'India': 'New Delhi',
  //   'China': 'Beijing',
  // };
  // countryCapital['UK'] = 'London';
  // print(countryCapital['USA']);

  // Loops in Maps

  // Map<String, dynamic> books = {
  //   'title': 'Mission Mangal',
  //   'author': 'Kuber Singh',
  //   'page': 33,
  // };

  // for (MapEntry book in books.entries) {
  //   print(
  //     'The key is ${book.key} and the value associated to that is ${book.value}',
  //   );
  // }

  // books.forEach(
  //   (key, value) => print('The key is $key and the value is $value'),
  // );

  // Map<String, double> mathMarks = {
  //   'ram': 80,
  //   'rahul': 90,
  //   'john': 100,
  //   'elon': 75.5,
  // };

  // mathMarks.removeWhere((key, value) => value < 90);
  // print(mathMarks);

  // Excercise

  const pizzaPrices = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};

  const order = ['margherita', 'pepperoni', 'magenta'];

  double totalPrice = 0.0;

  for (var item in order) {
    print(pizzaPrices[item]);
    pizzaPrices.forEach((key, value) {
      if (key == item) {
        totalPrice = totalPrice + pizzaPrices[item]!.toDouble();
      }
    });
  }

  print(totalPrice);
}
