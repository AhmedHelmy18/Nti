import 'package:flutter/material.dart';
import 'package:whats_app/ui/component/chat/send_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {'text': 'Hey there!', 'isMe': true, 'time': '11:45 PM'},
      {'text': 'Hello! How are you?', 'isMe': false, 'time': '11:46 PM'},
      {
        'text': 'I\'m fine, working on the UI.',
        'isMe': true,
        'time': '11:47 PM',
      },
      {
        'text': 'Nice! Let me know if you need help.',
        'isMe': false,
        'time': '11:48 PM',
      },
      {'text': 'Sure, thanks!', 'isMe': true, 'time': '11:49 PM'},
    ];

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Align(
                  alignment:
                      message['isMe'] as bool
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    decoration: BoxDecoration(
                      color:
                          message['isMe'] as bool
                              ? const Color(0xFF52140D)
                              : const Color(0xFF202C33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          message['text']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          message['time']!,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SendMessage(),
        ],
      ),
    );
  }
}
