import 'package:doctor_hunt/ui/components/common/find_doctor/model/doctor_model.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key, required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              doctor.name,
              style: const TextStyle(
                color: Color(0xff333333),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Icon(
              doctor.isFavorited ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
          ],
        ),
        const SizedBox(height: 5),
        const Text(
          "Tooths Dentist",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xff00c790),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "${doctor.yearsOfExperience} Years experience",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffb1b8ca),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const CircleAvatar(radius: 5, backgroundColor: Colors.green),
            const SizedBox(width: 5),
            Text(
              "${doctor.rating}%",
              style: const TextStyle(color: Colors.green),
            ),
            const SizedBox(width: 10),
            const CircleAvatar(radius: 5, backgroundColor: Colors.green),
            const SizedBox(width: 5),
            Text(
              "${doctor.patientStories} Patient Stories",
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
