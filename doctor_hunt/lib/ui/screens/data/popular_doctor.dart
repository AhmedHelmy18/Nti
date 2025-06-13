import 'package:doctor_hunt/ui/components/common/appbar.dart';
import 'package:doctor_hunt/ui/components/common/background_image.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/text_image.dart';
import 'package:doctor_hunt/ui/components/common/popular_doctor/body/category_doctor_list.dart';
import 'package:doctor_hunt/ui/components/common/popular_doctor/body/popular_doctor_list.dart';
import 'package:doctor_hunt/ui/components/common/popular_doctor/core/category_doctor_object.dart';
import 'package:doctor_hunt/ui/components/common/popular_doctor/core/doctor_object.dart';
import 'package:flutter/material.dart';

class PopularDoctor extends StatelessWidget {
  const PopularDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Appbar(
                title: '',
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.search, color: Colors.black45, size: 30),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  children: [
                    const SizedBox(height: 16),
                    TitleImage(text: 'Popular Doctors'),
                    const SizedBox(height: 8),
                    PopularDoctorList(doctors: popularDoctor),
                    const SizedBox(height: 16),
                    TitleImage(text: 'Category'),
                    const SizedBox(height: 8),
                    ...categoryDoctors.map(
                      (doctor) => CategoryDoctorTile(doctor: doctor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
