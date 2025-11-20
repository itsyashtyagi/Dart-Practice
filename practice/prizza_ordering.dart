void main() {
  const pizzaPrices = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};
  const order = ['margherita', 'pepperoni', 'pineapple'];

  print('Total: \$${calculateTotal(order: order, pizzaPrices: pizzaPrices)}');
}

double calculateTotal({
  required List<String> order,
  required Map<String, double> pizzaPrices,
}) {
  var total = 0.0;

  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }

  return total;
}
