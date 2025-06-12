class DoctorModel {
  final String name;
  final int yearsOfExperience;
  final String imageUrl;
  final int patientStories;
  final bool isFavorited;
  final String timeAvailability;
  final int rating;

  const DoctorModel({
    required this.name,
    required this.yearsOfExperience,
    required this.imageUrl,
    required this.patientStories,
    required this.isFavorited,
    required this.timeAvailability,
    required this.rating,
  });
}
