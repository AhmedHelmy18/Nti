import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.name, required this.age});

  final String name;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text("My name is $name"),
            SizedBox(height: 20),
            Text("My age is $age"),
          ],
        ),
      ),
    );
  }
}
