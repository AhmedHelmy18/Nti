import 'package:doctor_hunt/ui/components/onboarding/body/onboarding_body.dart';
import 'package:doctor_hunt/ui/components/onboarding/common/custom_buttons.dart';
import 'package:doctor_hunt/ui/components/onboarding/common/custom_text_body.dart';
import 'package:doctor_hunt/ui/screens/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingBody(left: 175, image: "assets/images/Ellipse 5.png", image2: "assets/images/Ellipse 1.png",),

          CustomTextBody(
            title: "Choose Best Doctors",
            top: 511,
            left: 36,
            height: 115,
            width: 304,
          ),

          CustomButtons(
            onPressedButton: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Onboarding3()),
              );
            },
          ),
        ],
      ),
    );
  }
}
