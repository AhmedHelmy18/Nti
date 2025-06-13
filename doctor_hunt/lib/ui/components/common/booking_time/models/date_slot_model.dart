import 'package:doctor_hunt/ui/components/common/booking_time/models/time_slot_model.dart';

class DateSlots {
  final String date;
  final String displayText;
  final List<TimeSlot> afternoonSlots;
  final List<TimeSlot> eveningSlots;

  DateSlots({
    required this.date,
    required this.displayText,
    required this.afternoonSlots,
    required this.eveningSlots,
  });

  bool get hasAvailableSlots =>
      afternoonSlots.any((slot) => slot.isAvailable) ||
          eveningSlots.any((slot) => slot.isAvailable);

  int get totalAvailableSlots =>
      afternoonSlots.where((slot) => slot.isAvailable).length +
          eveningSlots.where((slot) => slot.isAvailable).length;
}
