import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    super.key,
    required this.color1,
    required this.color2,
    required this.imageUrl,
  });

  final Color color1;
  final Color color2;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            borderRadius: BorderRadius.circular(8),
          ),

          child: Image.asset(imageUrl, height: 24, width: 24),
        ),
      ],
    );
  }
}
