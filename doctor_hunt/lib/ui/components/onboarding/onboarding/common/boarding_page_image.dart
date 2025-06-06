import 'package:flutter/material.dart';

class BoardingPageImage extends StatelessWidget {
  const BoardingPageImage({
    super.key,
    this.top,
    this.left,
    required this.image,
    this.right,
    this.bottom,
    required this.height,
    required this.width,
  });

  final double? top;
  final double? left;
  final String image;
  final double? right;

  final double? bottom;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
        ),
      ),
    );
  }
}
