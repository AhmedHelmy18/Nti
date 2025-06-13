import 'package:doctor_hunt/ui/components/common/booking_time/models/date_slot_model.dart';
import 'package:flutter/material.dart';

class ShowNoTime extends StatelessWidget {
  final DateSlots currentDateSlots;
  final DateSlots? nextAvailableDate;
  final VoidCallback onNextAvailabilityPressed;

  const ShowNoTime({
    super.key,
    required this.currentDateSlots,
    required this.onNextAvailabilityPressed,
    this.nextAvailableDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          currentDateSlots.displayText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'No slots available',
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
        const SizedBox(height: 24),
        if (nextAvailableDate != null) ...[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onNextAvailabilityPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00C896),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: Text(
                'Next availability on ${nextAvailableDate!.displayText.toLowerCase()}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'OR',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
        ],
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Contacting clinic...')),
              );
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              side: const BorderSide(color: Color(0xFF00C896), width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Contact Clinic',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF00C896),
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
