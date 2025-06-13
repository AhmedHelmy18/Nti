import 'package:doctor_hunt/ui/components/common/appbar.dart';
import 'package:doctor_hunt/ui/components/common/background_image.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/body/available_time_slot.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/body/show_day.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/body/show_no_time.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/core/time_slot_object.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/models/date_slot_model.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/models/time_slot_model.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/widgets/bottom_gradient.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/widgets/doctor_info.dart';
import 'package:doctor_hunt/ui/components/common/booking_time/widgets/time_slot.dart';
import 'package:flutter/material.dart';

class BookingTime extends StatefulWidget {
  const BookingTime({super.key});

  @override
  _BookingTimeState createState() => _BookingTimeState();
}

class _BookingTimeState extends State<BookingTime> {
  int selectedTabIndex = 0;
  String? selectedTimeSlot;

  @override
  void initState() {
    super.initState();
    dateSlotsList;
  }

  DateSlots get currentDateSlots => dateSlotsList[selectedTabIndex];

  bool get hasAvailableSlots => currentDateSlots.hasAvailableSlots;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              Appbar(title: 'Select Time'),
              const DoctorInfo(),
              ShowDay(
                selectedTabIndex: selectedTabIndex,
                onTabSelected: (index) {
                  setState(() {
                    selectedTabIndex = index;
                    selectedTimeSlot = null;
                  });
                },
              ),
              const SizedBox(height: 24),
              Expanded(
                child:
                    hasAvailableSlots
                        ? AvailableSlotsContent(
                          currentDateSlots: currentDateSlots,
                          timeSlotGridBuilder: timeSlotGrid,
                        )
                        : noSlotsContent(),
              ),
              BottomGradient(hasAvailableSlots: hasAvailableSlots),
            ],
          ),
        ],
      ),
    );
  }

  Widget noSlotsContent() {
    DateSlots? nextAvailableDate;
    for (int i = selectedTabIndex + 1; i < dateSlotsList.length; i++) {
      if (dateSlotsList[i].hasAvailableSlots) {
        nextAvailableDate = dateSlotsList[i];
        break;
      }
    }

    return ShowNoTime(
      currentDateSlots: currentDateSlots,
      nextAvailableDate: nextAvailableDate,
      onNextAvailabilityPressed: () {
        if (nextAvailableDate != null) {
          int nextIndex = dateSlotsList.indexOf(nextAvailableDate);
          setState(() {
            selectedTabIndex = nextIndex;
          });
        }
      },
    );
  }

  Widget timeSlotGrid(List<TimeSlot> slots) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children:
          slots
              .where((slot) => slot.isAvailable)
              .map((slot) => timeSlot(slot.time))
              .toList(),
    );
  }

  Widget timeSlot(String time) {
    bool isSelected = selectedTimeSlot == time;

    return TimeSlotWidget(
      time: time,
      isSelected: isSelected,
      onTap: () {
        setState(() {
          selectedTimeSlot = isSelected ? null : time;
        });

        if (!isSelected) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Selected $time on ${currentDateSlots.displayText}',
              ),
              backgroundColor: const Color(0xFF00C896),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
    );
  }
}
