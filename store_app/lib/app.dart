import 'package:flutter/material.dart';
import 'package:store_app/ui/onboarding_pages/signup_page.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignupPage(),
    );
  }
}
