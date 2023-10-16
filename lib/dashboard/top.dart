import 'package:dellsparkcity/dashboard/metric_card.dart';
import 'package:dellsparkcity/dashboard/user_profile_card.dart';
import 'package:flutter/material.dart';
//import 'package:signin_example/components/dashboard/export_button.dart';
//import 'package:signin_example/components/dashboard/user_details.dart';
//import 'package:signin_example/components/dashboard/time_period_buttons.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 850, // Set your desired width for the top container
          height: 120, // Set your desired height for the top container
          child: const UserProfileCard(
            teamLead: "Pika Kim",
            team: "Sales & Marketing",
            leaderboard: "4",
            icon: Icons.check_circle_outline,
            target: "< 600 kWh",
          ),
        ),
        SizedBox(height: 40.0), // Add vertical spacing
        Container(
          width: 300, // Set your desired width for the new container
          height: 120, // Set your desired height for the new container
          child: MetricCard(
            title: "Total Energy Used This Month:",
            value: "500kwh",
            percentage: "10%",
          ),
        ),
      ],
    );
  }
}
