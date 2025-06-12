import 'package:doctor_hunt/ui/components/common/find_doctor/model/doctor_model.dart';
import 'package:doctor_hunt/ui/components/common/find_doctor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TimeAvailable extends StatelessWidget {
  const TimeAvailable({super.key, required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: "Next Available",
            style: const TextStyle(
              color: Color(0xff00bf80),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: "\n\n${doctor.timeAvailability} ",
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff637294),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(
                text: "AM tomorrow",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff637294),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        CustomElevatedButton(),
      ],
    );
  }
}
