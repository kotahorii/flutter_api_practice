class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  Recipe(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'],
        rating: json['rating'],
        totalTime: json['totalTime']);
  }

  static List<Recipe> recipeFromSnapshot(List snapshot) {
    return snapshot.map((data) => Recipe.fromJson(data)).toList();
  }
}
