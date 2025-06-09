import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  const CustomTextBody({
    super.key,
    required this.title,
    required this.top,
    required this.left,
    required this.height,
    required this.width,
  });

  final String title;
  final double top;
  final double left;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              textAlign: TextAlign.center,
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
