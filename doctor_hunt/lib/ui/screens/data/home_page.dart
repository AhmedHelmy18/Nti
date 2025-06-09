import 'package:doctor_hunt/ui/components/common/home/body/category_icon.dart';
import 'package:doctor_hunt/ui/components/common/home/body/feature_doctor.dart';
import 'package:doctor_hunt/ui/components/common/home/body/home_header.dart';
import 'package:doctor_hunt/ui/components/common/home/body/live_doctor.dart';
import 'package:doctor_hunt/ui/components/common/home/body/popular_doctor.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/custom_navigation_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeHeader(),
            SizedBox(height: 50),
            LiveDoctorsSection(),
            SizedBox(height: 30),
            CategoriesSection(),
            SizedBox(height: 30),
            PopularDoctorsSection(),
            SizedBox(height: 30),
            FeaturedDoctorsSection(),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationButton(),
    );
  }
}
