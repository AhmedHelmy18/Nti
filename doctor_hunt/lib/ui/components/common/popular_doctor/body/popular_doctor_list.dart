import 'package:doctor_hunt/ui/components/common/popular_doctor/model/doctor_model.dart';
import 'package:doctor_hunt/ui/components/common/popular_doctor/widget/popular_doctor_body.dart';
import 'package:flutter/material.dart';

class PopularDoctorList extends StatelessWidget {
  final List<Doctor> doctors;

  const PopularDoctorList({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return PopularDoctorBody(doctor: doctors[index]);
        },
      ),
    );
  }
}