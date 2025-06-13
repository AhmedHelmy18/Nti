import 'package:flutter/material.dart';

class BottomGradient extends StatelessWidget {
  final bool hasAvailableSlots;

  const BottomGradient({
    super.key,
    required this.hasAvailableSlots,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hasAvailableSlots ? 100 : 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.0),
            const Color(0xFF00C896).withOpacity(0.1),
            const Color(0xFF00C896).withOpacity(0.3),
          ],
        ),
      ),
    );
  }
}