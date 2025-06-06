import 'package:doctor_hunt/ui/components/onboarding/splash_screen/splash_screen_image.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashScreenImage(
            top: -33,
            left: -100,
            image: "assets/images/Ellipse 3.png",
          ),
          SplashScreenImage(
            top: 450,
            left: 80,
            image: "assets/images/Ellipse 4.png",
          ),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/Vector.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  "Doctor Hunt",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
