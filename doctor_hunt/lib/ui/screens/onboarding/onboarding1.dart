import 'package:doctor_hunt/ui/components/onboarding/body/onboarding_body.dart';
import 'package:doctor_hunt/ui/components/onboarding/common/custom_buttons.dart';
import 'package:doctor_hunt/ui/components/onboarding/common/custom_text_body.dart';
import 'package:doctor_hunt/ui/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingBody(left: -104, image: "assets/images/Ellipse 6.png", image2: "assets/images/Ellipse 2.png",),

          CustomTextBody(
            title: "Find Trusted Doctors",
            top: 512,
            left: 43,
            height: 114,
            width: 289,
          ),

          CustomButtons(
            onPressedButton: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Onboarding2()),
              );
            },
          ),
        ],
      ),
    );
  }
}
