import 'package:flutter/material.dart';
import 'package:task_ui/ui/component/appbar.dart';
import 'package:task_ui/ui/component/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int number ;
    return Scaffold(
      appBar: Appbar(),
      body: BodyScreen(),
    );
  }
}
