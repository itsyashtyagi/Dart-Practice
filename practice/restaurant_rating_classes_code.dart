void main() {
  Restaurant r1 = Restaurant(
    name: 'xyz',
    cuisine: 'xyz',
    ratings: [14.0, 16.6, 17.3, 89.98],
  );
  print(r1.totalRating);

  Restaurant r2 = Restaurant(
    name: 'xyz',
    cuisine: 'xyz',
    ratings: [14.0, 16.6, 17.3, 79.98],
  );
  print(r2.averageRating());
}

class Restaurant {
  final String name;
  final String cuisine;
  final List<double> ratings;

  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  int get ratingLength => ratings.length;

  double get totalRating {
    double totalRatingValue = 0.0;
    for (var rating in ratings) {
      totalRatingValue += rating;
    }
    return totalRatingValue / ratingLength;
  }

  double? averageRating() {
    if (ratings.isEmpty) {
      return null;
    }

    return ratings.reduce((value, element) => value + element) / ratingLength;
  }
}
