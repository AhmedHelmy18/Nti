import 'package:doctor_hunt/ui/components/common/home/widget/feature_doctor_card.dart';

final List<FeatureDoctorCard> featuredDoctors = [
  FeatureDoctorCard(
    name: "Dr.Crick",
    specialty: "\$ 25.00/ hours",
    imageUrl: "assets/images/doctor 1.jpg",
    rating: 3.7,
    isFavorited: false,
  ),
  FeatureDoctorCard(
    name: "Dr.Strain",
    specialty: "\$ 22.00/ hours",
    imageUrl: "assets/images/doctor 2.jpg",
    rating: 3.0,
    isFavorited: true,
  ),
  FeatureDoctorCard(
    name: "Dr.Lachinet",
    specialty: "\$ 29.00/ hours",
    imageUrl: "assets/images/doctor 3.jpg",
    rating: 2.9,
    isFavorited: false,
  ),
];
