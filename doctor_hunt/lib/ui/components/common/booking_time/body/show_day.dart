import 'package:doctor_hunt/ui/components/common/booking_time/core/time_slot_object.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/widgets/day_date_time.dart';
import 'package:flutter/material.dart';

class ShowDay extends StatelessWidget {
  final int selectedTabIndex;
  final Function(int) onTabSelected;

  const ShowDay({
    super.key,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dateSlotsList.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          final dateSlots = dateSlotsList[index];
          final String subtitle = dateSlots.hasAvailableSlots
              ? '${dateSlots.totalAvailableSlots} slots available'
              : 'No slots available';

          return DayDateTime(
            title: dateSlots.date,
            subtitle: subtitle,
            isAvailable: dateSlots.hasAvailableSlots,
            isSelected: selectedTabIndex == index,
            onTap: () => onTabSelected(index),
          );
        },
      ),
    );
  }
}