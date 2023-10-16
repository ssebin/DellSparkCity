import 'package:dellsparkcity/chatgpt_card.dart';
import 'package:dellsparkcity/prediction_card.dart';
import 'package:dellsparkcity/tips_card.dart';
import 'package:flutter/material.dart';
// import 'package:signin_example/components/chatgpt_card.dart';
// import 'package:signin_example/components/prediction_card.dart';
// import 'package:signin_example/components/tips_card.dart';

class InsightsPage extends StatelessWidget {
  const InsightsPage({Key? key}) : super(key: key); // Fixed the key constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 30.0, right:0),
          child: Text(
            'Insights',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0, top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2),

            // Combined Row for TipsCard and ChatGPTCard to align them vertically
            Row(
              children: [
                // Expanded Widget for TipsCard with flex 1
                Expanded(
                  flex: 1,
                  child: TipsCard(),
                ),
                SizedBox(width: 2),
                // Expanded Widget for ChatGPTCard with flex 2
                Expanded(
                  flex: 2,
                  child: ChatGPTCard(),
                ),
              ],
            ),

            SizedBox(height: 5),

            // Row to accommodate full-width PredictionsCard
            // Expanded(
            //   child: PredictionsCard(),
            // ),
            // SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
