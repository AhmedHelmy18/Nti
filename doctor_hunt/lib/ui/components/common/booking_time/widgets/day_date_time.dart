import 'package:flutter/material.dart';

class DayDateTime extends StatelessWidget {
  const DayDateTime({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isAvailable,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final bool isAvailable;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color unselectedBackgroundColor = const Color(0xFFEFF6FF);
    Color unselectedBorderColor = const Color(0xFFD8E6F8);
    Color unselectedTitleColor = const Color(0xFF2B3A4B);
    Color unselectedSubtitleColor = Colors.grey.shade600;

    Color selectedColor = const Color(0xFF00C896);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minWidth: 130, maxWidth: 150),
        margin: const EdgeInsets.only(right: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : unselectedBackgroundColor,
          borderRadius: BorderRadius.circular(10.0),
          border:
              isSelected
                  ? null
                  : Border.all(color: unselectedBorderColor, width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: isSelected ? Colors.white : unselectedTitleColor,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color:
                    isSelected
                        ? Colors.white.withOpacity(0.8)
                        : (isAvailable
                            ? selectedColor
                            : unselectedSubtitleColor),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
