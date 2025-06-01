import 'package:flutter/material.dart';

Widget itemBuilder({required String text, required Color colorContainer}) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: colorContainer,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  );
}
