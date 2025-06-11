import 'package:flutter/material.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: screenHeight * 0.9,
          left: screenWidth * 0.05,
          child: SizedBox(
            width: screenWidth * 0.9,
            height: screenHeight * 0.07,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              maxLines: 3,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Color(0xff7180a0),
                    size: 24,
                  ),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff00C853),
                    ),
                    child: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                hintText: "Add a Comment.....",
                hintStyle: TextStyle(
                  color: Color(0xff7180a0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(
                color: Color(0xff252525),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
