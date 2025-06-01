import 'package:flutter/material.dart';
import 'package:show_character/ui/widgets/appbar.dart';
import 'package:show_character/ui/widgets/body.dart';
import 'package:show_character/ui/widgets/item_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppbarScreen(),
      body: BodyScreen(),
    );
  }
}
