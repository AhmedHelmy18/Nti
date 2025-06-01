import 'package:flutter/material.dart';
import 'package:show_character/constant/theme.dart';

class AppbarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppbarScreen({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    String titleText = 'Characters';
    List<TextSpan> textSpans = [];

    for (int i = 0; i < titleText.length; i++) {
      textSpans.add(
        TextSpan(
          text: titleText[i],
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            // Ensure colorContainer is accessible here
            color: colorContainer[i % colorContainer.length],
          ),
        ),
      );
    }

    return AppBar(
      backgroundColor: Colors.grey[200],
      title: RichText(text: TextSpan(children: textSpans)),
      centerTitle: true,
    );
  }
}
