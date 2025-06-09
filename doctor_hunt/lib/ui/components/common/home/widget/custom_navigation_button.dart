import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationButton extends StatefulWidget {
  const CustomNavigationButton({super.key});

  @override
  State<CustomNavigationButton> createState() => _CustomNavigationButtonState();
}

class _CustomNavigationButtonState extends State<CustomNavigationButton> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 12, right: 12),
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(Icons.home_filled, 0),
            buildNavItem(Icons.favorite, 1),
            buildNavItem(CupertinoIcons.book_fill, 2),
            buildNavItem(CupertinoIcons.chat_bubble_text_fill, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(IconData iconData, int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child:
          isSelected
              ? Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff00c182),
                ),
                child: Icon(iconData, color: Colors.white, size: 28),
              )
              : Icon(iconData, color: Colors.grey.shade600, size: 28),
    );
  }
}
