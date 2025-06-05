import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.validator,
    required this.textInputAction,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}
