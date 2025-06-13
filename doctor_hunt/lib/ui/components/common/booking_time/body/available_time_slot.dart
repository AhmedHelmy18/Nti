import 'package:doctor_hunt/ui/components/common/booking_time/models/date_slot_model.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/models/time_slot_model.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/widgets/available_time_section.dart';
import 'package:flutter/material.dart';

class AvailableSlotsContent extends StatelessWidget {
  final DateSlots currentDateSlots;
  final Widget Function(List<TimeSlot>) timeSlotGridBuilder;

  const AvailableSlotsContent({
    super.key,
    required this.currentDateSlots,
    required this.timeSlotGridBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            currentDateSlots.displayText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvailableTimeSection(
                  title: 'Afternoon',
                  slots: currentDateSlots.afternoonSlots,
                  timeSlotGridBuilder: timeSlotGridBuilder,
                ),
                AvailableTimeSection(
                  title: 'Evening',
                  slots: currentDateSlots.eveningSlots,
                  timeSlotGridBuilder: timeSlotGridBuilder,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}