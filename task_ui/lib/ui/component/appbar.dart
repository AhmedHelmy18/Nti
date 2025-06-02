import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      title: const Text(
        'operations',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
      ),
      centerTitle: true,
    );
  }
}
