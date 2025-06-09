import 'package:doctor_hunt/ui/components/common/home/core/model_popular_doctor.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/popular_doctor_card.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/text_image.dart';
import 'package:flutter/material.dart';

class PopularDoctorsSection extends StatelessWidget {
  const PopularDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleImage(text: "Popular Doctors"),
        const SizedBox(height: 15),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: popularDoctors.length,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            itemBuilder: (context, index) {
              final doctor = popularDoctors[index];
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: PopularDoctorCard(
                  name: doctor.name,
                  specialty: doctor.specialty,
                  imageUrl: doctor.imageUrl,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
