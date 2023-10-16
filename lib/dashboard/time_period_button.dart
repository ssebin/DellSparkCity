import 'package:flutter/material.dart';

class TimePeriodButton extends StatelessWidget {
  final String label;

  TimePeriodButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      padding: EdgeInsets.all(10.0),
      constraints: BoxConstraints.tightForFinite(width: 150),
      child: ElevatedButton(
        onPressed: () {
          // Implement button functionality here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Button background color
          foregroundColor: Colors.black, // Button text color
          elevation: 0, // Remove elevation from the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
