import 'package:flutter/material.dart';
import 'package:ui/ui/onboarding/onboarding.dart';

void main() {
  runApp(const FigmaUi());
}

class FigmaUi extends StatelessWidget {
  const FigmaUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: OnBoarding());
  }
}
