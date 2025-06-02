import 'package:flutter/material.dart';
import 'package:task_ui/constant/theme.dart';
import 'package:task_ui/ui/component/appbar.dart';
import 'package:task_ui/ui/component/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorIndex = 0;

  void changeBackgroundColor() {
    setState(() {
      colorIndex = (colorIndex + 1) % colorContainer.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorContainer[colorIndex],
      appBar: Appbar(),
      body: BodyScreen(onChangeColor: changeBackgroundColor),
    );
  }
}
