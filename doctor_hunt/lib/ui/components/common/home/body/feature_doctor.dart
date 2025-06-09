import 'package:doctor_hunt/ui/components/common/home/core/model_feature_doctor.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/feature_doctor_card.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/text_image.dart';
import 'package:flutter/material.dart';

class FeaturedDoctorsSection extends StatelessWidget {
  const FeaturedDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleImage(text: "Featured Doctors"),
        const SizedBox(height: 15),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredDoctors.length,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            itemBuilder: (context, index) {
              final doctor = featuredDoctors[index];
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: FeatureDoctorCard(
                  name: doctor.name,
                  specialty: doctor.specialty,
                  imageUrl: doctor.imageUrl,
                  rating: doctor.rating,
                  isFavorited: doctor.isFavorited,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}