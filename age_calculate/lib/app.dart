import 'package:age_calculate/screens/home_page.dart';
import 'package:flutter/material.dart';

class AgeCalculate extends StatelessWidget {
  const AgeCalculate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
