import 'package:doctor_hunt/ui/components/onboarding/body/onboarding_body.dart';
import 'package:doctor_hunt/ui/components/onboarding/common/custom_buttons.dart';
import 'package:doctor_hunt/ui/components/onboarding/common/custom_text_body.dart';
import 'package:doctor_hunt/ui/screens/data/home_page.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingBody(
            left: -104,
            image: "assets/images/Ellipse 7.png",
            image2: "assets/images/Ellipse 2.png",
          ),

          CustomTextBody(
            title: "Easy Appointments",
            top: 518,
            left: 39,
            height: 108,
            width: 300,
          ),

          CustomButtons(
            onPressedButton: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
