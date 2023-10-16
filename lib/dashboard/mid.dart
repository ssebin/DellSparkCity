import 'package:dellsparkcity/dashboard/exported_button.dart';
import 'package:dellsparkcity/dashboard/time_period_button.dart';
import 'package:flutter/material.dart';

class MidSection extends StatelessWidget {
  const MidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0, left: 40, right: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.end, // Adjust alignment as needed
            children: [
              Expanded(
                child: Row(
                  children: [
                    ActionButton(
                      label: '<',
                      icons: Icons.arrow_back_ios,
                    ),
                    SizedBox(width: 12.0),
                    const Text(
                      "February",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 12.0),
                    ActionButton(label: '>', icons: Icons.arrow_forward_ios),
                  ],
                ),
              ),

              SizedBox(height: 12.0),
              TimePeriodButton(label: 'Daily'),
              SizedBox(width: 12.0), // Add a gap of 16.0 units between buttons
              TimePeriodButton(label: 'Weekly'),
              SizedBox(width: 12.0), // Add a gap of 16.0 units between buttons
              TimePeriodButton(label: 'Monthly'),
              SizedBox(width: 12.0), // Add a gap of 16.0 units between buttons
              TimePeriodButton(label: 'Yearly'),
            ],
          ),

          SizedBox(
              height: 20.0), // Add vertical spacing between top and bottom rows
          Row(
            mainAxisAlignment:
                MainAxisAlignment.end, // Adjust alignment as needed
            children: [
              ExportButton(
                label: 'Export to PDF',
                icon: Icons.picture_as_pdf,
                onPressed: () {
                  // Implement PDF export logic here
                },
              ),
              SizedBox(width: 16.0), // Add a gap of 16.0 units between buttons
              ExportButton(
                label: 'Export to CSV',
                icon: Icons.file_download,
                onPressed: () {
                  // Implement CSV export logic here
                },
              ),
              SizedBox(width: 16.0), // Add a gap of 16.0 units between buttons
            ],
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final IconData icons;

  ActionButton({required this.label, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Button background color
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      constraints: BoxConstraints.tightForFinite(height: 40),
      child: ElevatedButton(
          onPressed: () {
            // Implement button functionality here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Button background color
            foregroundColor: Colors.white, // Button text color
            elevation: 0, // Remove elevation from the button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Icon(
            icons,
            size: 18.0,
            color: Colors.black,
          )),
    );
  }
}
