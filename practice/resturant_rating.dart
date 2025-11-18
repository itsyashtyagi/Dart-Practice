void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    if (restaurant.containsKey('ratings')) {
      var totalRating = 0.0;
      final ratings = restaurant['ratings'] as List<double>;
      for (var rating in ratings) {
        totalRating = totalRating + rating;
      }
      var averageRating = totalRating / ratings.length;
      print('The average Rating of ${restaurant['name']} is $averageRating');
    }
  }
}
