import 'package:doctor_hunt/ui/components/common/chat/core/chat_object.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: screenHeight * 0.06,
          left: screenWidth * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/Rectangle 1.png",
              height: screenHeight * 0.09,
              width: screenWidth * 0.18,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          top: screenHeight * 0.5,
          left: screenWidth * 0.01,
          right: screenWidth * 0.05,
          bottom: screenHeight * 0.05,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              final chat = chatList[index];
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    chat.image,
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.15,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  chat.title,
                  style: TextStyle(
                    color: Color(0xff528797),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  chat.message,
                  style: TextStyle(
                    color: Color.fromARGB(255, 37, 37, 37),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
