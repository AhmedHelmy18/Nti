import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textInputAction,
    required this.validator,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.controller, required this.keyboardType,
  });

  final TextEditingController controller;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: hintText,
      ),
      textInputAction: textInputAction,
      validator: validator,
    );
  }
}
