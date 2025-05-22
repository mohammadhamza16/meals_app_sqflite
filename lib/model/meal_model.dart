class MealModel {
  final String name;
  final String imagePath;
  final String description;
  final String duration;
  final double price;
  final double rating;

  MealModel({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.rating,
    required this.duration,
  });
  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      name: map['name'] as String,
      imagePath: map['imagePath'] as String,
      description: map['description'] as String,
      price: (map['price'] as num).toDouble(),
      rating: (map['rating'] as num).toDouble(),
      duration: map['duration'] as String,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imagePath': imagePath,
      'description': description,
      'price': price,
      'rating': rating,
      'duration': duration,
    };
  }
}
