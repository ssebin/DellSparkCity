import 'package:flutter/material.dart';

class MetricCard extends StatelessWidget {
  final String title;
  final String value;

  MetricCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add elevation for shadow
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // <-- SEE HERE

                  children: [
                    Text(
                      value,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 100),
                    Icon(
                      Icons.arrow_downward,
                      size: 35.0, // Adjust the size as needed
                    ),
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
