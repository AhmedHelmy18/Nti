import 'package:flutter/material.dart';
import 'package:store_app/ui/components/onboarding/form/signup_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SignupForm()));
  }
}
