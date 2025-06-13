import 'package:doctor_hunt/ui/components/common/custom_icon_button_back.dart';
import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: screenHeight * 0.06,
          left: screenWidth * 0.04,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomIconButtonBack(),
          ),
        ),
        Positioned(
          top: screenHeight * 0.06,
          left: screenWidth * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imageUrl,
              height: screenHeight * 0.09,
              width: screenWidth * 0.18,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
