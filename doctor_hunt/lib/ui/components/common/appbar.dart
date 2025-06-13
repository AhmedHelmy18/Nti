import 'package:doctor_hunt/ui/components/common/custom_icon_button_back.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: CustomIconButtonBack(),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    );
  }
}
