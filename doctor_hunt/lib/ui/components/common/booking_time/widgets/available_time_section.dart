
import 'package:doctor_hunt/ui/components/common/booking_time/models/time_slot_model.dart';
import 'package:flutter/material.dart';

class AvailableTimeSection extends StatelessWidget {
  const AvailableTimeSection({
    super.key,
    required this.slots,
    required this.title,
    required this.timeSlotGridBuilder,
  });

  final List<TimeSlot> slots;
  final String title;
  final Widget Function(List<TimeSlot>) timeSlotGridBuilder;

  @override
  Widget build(BuildContext context) {
    final availableSlots = slots.where((slot) => slot.isAvailable).toList();

    if (availableSlots.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title ${availableSlots.length} slots',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          timeSlotGridBuilder(availableSlots),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}