class Doctor {
  final String name;
  final String specialty;
  final String imagePath;
  final double rating;
  final int? views;
  final bool isFavorite;

  Doctor({
    required this.name,
    required this.specialty,
    required this.imagePath,
    required this.rating,
    this.views,
    this.isFavorite = false,
  });
}