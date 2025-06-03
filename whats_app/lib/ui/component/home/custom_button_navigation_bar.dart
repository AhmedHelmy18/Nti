import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatefulWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  State<CustomButtonNavigationBar> createState() =>
      _CustomButtonNavigationBarState();
}

class _CustomButtonNavigationBarState extends State<CustomButtonNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double iconSize = 25;

    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 15,
      unselectedFontSize: 13,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, size: iconSize),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update, size: iconSize),
          label: 'Updates',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups, size: iconSize),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone, size: iconSize),
          label: 'Calls',
        ),
      ],
    );
  }
}
