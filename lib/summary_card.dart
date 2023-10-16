import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';  // Import flutter_svg package

class SummaryCard extends StatelessWidget {
  final String summary;

  SummaryCard({required this.summary});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4.0,
      shadowColor: Colors.grey.withOpacity(0.8),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(  // Set decoration for the Container
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),  // Apply border radius
        ),
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    // Image.asset(
                    //   'assets/Answer-User.png', // Replace with the path to your image asset
                    //   width: 25,
                    //   height: 25,
                    // ),
                    const SizedBox(width: 8), // Adds some spacing between the image and text
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      summary,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            // Positioned(
            //   top: 8,
            //   right: 8,
            //   child: SvgPicture.asset(
            //     'assets/icons/Rating.svg', 
            //     height: 13,
            //     width: 13,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

