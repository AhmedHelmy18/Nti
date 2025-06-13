import 'package:doctor_hunt/ui/components/common/booking_time/models/date_slot_model.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/models/time_slot_model.dart';

final List<DateSlots> dateSlotsList = [
  DateSlots(
    date: 'Today, 23 Feb',
    displayText: 'Today, 23 Feb',
    afternoonSlots: [],
    eveningSlots: [],
  ),
  DateSlots(
    date: 'Tomorrow, 24 Feb',
    displayText: 'Tomorrow, 24 Feb',
    afternoonSlots: [
      TimeSlot(time: '1:00 PM'),
      TimeSlot(time: '1:30 PM'),
      TimeSlot(time: '2:00 PM'),
      TimeSlot(time: '2:30 PM'),
      TimeSlot(time: '3:00 PM'),
      TimeSlot(time: '3:30 PM'),
      TimeSlot(time: '4:00 PM'),
    ],
    eveningSlots: [
      TimeSlot(time: '5:00 PM'),
      TimeSlot(time: '5:30 PM'),
      TimeSlot(time: '6:00 PM'),
      TimeSlot(time: '6:30 PM'),
      TimeSlot(time: '7:00 PM'),
    ],
  ),
  DateSlots(
    date: 'Thu, 25 Feb',
    displayText: 'Thursday, 25 Feb',
    afternoonSlots: [
      TimeSlot(time: '2:00 PM'),
      TimeSlot(time: '2:30 PM'),
      TimeSlot(time: '3:00 PM'),
      TimeSlot(time: '4:00 PM'),
    ],
    eveningSlots: [
      TimeSlot(time: '5:00 PM'),
      TimeSlot(time: '6:00 PM'),
      TimeSlot(time: '6:30 PM'),
    ],
  ),
];
