import 'package:doctor_hunt/ui/components/common/find_doctor/core/doctor_object.dart';
import 'package:doctor_hunt/ui/components/common/find_doctor/widgets/appbar.dart';
import 'package:doctor_hunt/ui/components/common/find_doctor/widgets/doctor_card.dart';
import 'package:doctor_hunt/ui/components/common/search_text_field.dart';
import 'package:flutter/material.dart';

class FindDoctors extends StatelessWidget {
  const FindDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/images/01_Splash screen.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const Appbar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SearchTextField(hintText: "Dentist"),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    return DoctorCard(doctor: doctors[index]);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
