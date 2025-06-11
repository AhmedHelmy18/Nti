import 'package:doctor_hunt/ui/components/common/chat/widgets/chat_body.dart';
import 'package:doctor_hunt/ui/components/common/chat/widgets/chat_header.dart';
import 'package:doctor_hunt/ui/components/common/chat/widgets/text_field_chat.dart';
import 'package:flutter/material.dart';

class DoctorLiveChat extends StatelessWidget {
  const DoctorLiveChat({super.key, required this.imageDoctor});

  final String imageDoctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/chat_background.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          ChatHeader(imageUrl: imageDoctor),
          ChatBody(),
          ChatTextField(),
        ],
      ),
    );
  }
}