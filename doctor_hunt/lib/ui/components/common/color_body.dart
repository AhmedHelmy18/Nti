import 'package:flutter/material.dart';

class SplashScreenImage extends StatelessWidget {
  const SplashScreenImage({
    super.key,
    required this.top,
    required this.left,
    required this.image,
  });

  final double top;
  final double left;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: 216,
        width: 216,
        child: Image.asset(image, fit: BoxFit.contain),
      ),
    );
  }
}
