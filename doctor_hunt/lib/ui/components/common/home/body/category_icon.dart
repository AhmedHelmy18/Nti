import 'package:doctor_hunt/ui/components/common/home/core/model_icons.dart';
import 'package:doctor_hunt/ui/components/common/home/widget/category_icon.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CategoryIcon(
              color1: category.color1,
              color2: category.color2,
              imageUrl: category.imageUrl,
            ),
          );
        },
      ),
    );
  }
}
