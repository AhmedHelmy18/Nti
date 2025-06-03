import 'package:flutter/material.dart';
import 'package:whats_app/ui/component/home/appbar.dart';
import 'package:whats_app/ui/component/home/body_screen.dart';
import 'package:whats_app/ui/component/home/custom_button_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: Appbar(),
        body: const BodyScreen(),
        bottomNavigationBar: const CustomButtonNavigationBar(),
      ),
    );
  }
}
