import 'package:doctor_hunt/ui/components/common/home/widget/live_card.dart';
import 'package:flutter/material.dart';

class LiveDoctorsSection extends StatelessWidget {
  const LiveDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Live Doctors",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SizedBox(
            height: 168,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return LiveDoctorCard(
                  imageUrl: 'assets/images/Rectangle ${index + 1}.png',
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}