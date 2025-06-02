import 'package:flutter/material.dart';
import 'package:task_ui/ui/screens/home_page.dart';

class Operations extends StatelessWidget {
  const Operations({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
