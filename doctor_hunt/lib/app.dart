import 'package:doctor_hunt/ui/screens/onboarding/onboarding1.dart';
import 'package:doctor_hunt/ui/screens/onboarding/onboarding2.dart';
import 'package:doctor_hunt/ui/screens/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Onboarding2(),
    );
  }
}
