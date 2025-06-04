import 'package:flutter/material.dart';
import 'package:store_app/ui/components/onboarding/form/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: LoginForm()));
  }
}
