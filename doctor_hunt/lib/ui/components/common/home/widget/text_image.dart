import 'package:flutter/material.dart';

class TitleImage extends StatelessWidget {
  const TitleImage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text("See all", style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}
