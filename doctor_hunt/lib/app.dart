import 'package:doctor_hunt/ui/screens/data/doctor_live_chat.dart';
import 'package:doctor_hunt/ui/screens/data/find_doctors.dart';
import 'package:doctor_hunt/ui/screens/data/home_page.dart';
import 'package:flutter/material.dart';

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FindDoctors(),
    );
  }
}
