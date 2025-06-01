import 'package:flutter/material.dart';
import 'package:show_character/ui/screens/home_page.dart';

class CharactersContainers extends StatelessWidget {
  const CharactersContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Characters',
      home: const HomePage(),
    );
  }
}
