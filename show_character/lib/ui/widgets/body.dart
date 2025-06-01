import 'package:flutter/material.dart';
import 'package:show_character/ui/components/characters.dart';
import 'package:show_character/ui/components/colors.dart';
import 'package:show_character/ui/widgets/item_builder.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 4,
      ),
      padding: EdgeInsets.all(10),
      physics: const BouncingScrollPhysics(),

      itemCount: 36,
      itemBuilder: (BuildContext context, int index) {
        return itemBuilder(
          text: showCharacter(charIndex: index),
          colorContainer: showColor(colorIndex: index),
        );
      },
    );
  }
}
