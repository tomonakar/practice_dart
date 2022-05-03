class Restaurant {
  const Restaurant({required this.name, required this.ratings});
  final String name;
  final List<double> ratings;

  int get ratingLength => ratings.length;
  double get totalRating {
    if (ratings.isEmpty) {
      return 0.0;
    }
    return ratings.reduce((value, element) => value + element);
  }

  double averageRating() {
    if (ratings.isEmpty) {
      return 0.0;
    }
    return totalRating / ratingLength;
  }
}

void main() {
  final restaurant = Restaurant(
    name: 'Restaurant',
    ratings: [1.0, 2.0, 3.0, 4.0, 5.0],
  );
  print('totalRating: ${restaurant.totalRating}');
  print('averageRating: ${restaurant.averageRating()}');

  final restaurant2 = Restaurant(
    name: 'Restaurant2',
    ratings: [],
  );

  print('totalRating: ${restaurant2.totalRating}');
  print('averageRating: ${restaurant2.averageRating()}');
}
