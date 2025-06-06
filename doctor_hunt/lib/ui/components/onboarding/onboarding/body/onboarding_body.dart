import 'package:doctor_hunt/ui/components/onboarding/onboarding/common/boarding_page_image.dart';
import 'package:doctor_hunt/ui/components/onboarding/splash_screen/splash_screen_image.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.image, required this.left, required this.image2});

  final String image;
  final double left;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BoardingPageImage(
          top: -20,
          left: left,
          image: image2,
          height: 342,
          width: 342,
        ),
        BoardingPageImage(
          top: 91,
          left: 20,
          image: image,
          height: 336,
          width: 336,
        ),

        SplashScreenImage(
          top: 641,
          left: 212,
          image: "assets/images/Ellipse 4.png",
        ),
      ],
    );
  }
}
