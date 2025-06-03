import 'package:flutter/material.dart';
import 'package:whats_app/ui/component/chat/appbar.dart';
import 'package:whats_app/ui/component/chat/chat_messages.dart';
import 'package:whats_app/ui/component/chat/send_message.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: Appbar(),
      body: ChatScreen(),
    );
  }
}
