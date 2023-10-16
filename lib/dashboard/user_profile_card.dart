import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  final String teamLead;
  final String team;
  final String leaderboard;
  final IconData icon; // Icon related to the metric
  final String target; // Icon related to the metric

  const UserProfileCard(
      {super.key,
      required this.teamLead,
      required this.team,
      required this.leaderboard,
      required this.icon,
      required this.target});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add elevation for shadow
      //margin: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome," + teamLead,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Team: " + team,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Leader Postion : #" + leaderboard,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(width: 50.0), // Add horizontal spacing between the columns
            Column(children: <Widget>[
              Icon(
                icon,
                size: 48.0, // Adjust the size as needed
                color: Colors.green,
              ),
              Text(
                "Target : " + target,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
