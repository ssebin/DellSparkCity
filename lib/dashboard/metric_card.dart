import 'package:flutter/material.dart';

class MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final String percentage;

  MetricCard(
      {required this.title, required this.value, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add elevation for shadow
      //margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 20.0), // Add vertical spacing
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // <-- SEE HERE

                  children: [
                    Text(
                      value,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 100),
                    const Icon(
                      Icons.arrow_upward_rounded,
                      size: 16.0, // Adjust the size as needed
                      color: Colors.red,
                    ),
                    Text(
                      percentage,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.red),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
