//import 'package:dellsparkcity/chatgpt_card.dart';
//import 'package:dellsparkcity/chatgpt_card.dart';
import 'package:dellsparkcity/model/chat_api.dart';
import 'package:dellsparkcity/model/chat_page.dart';
import 'package:dellsparkcity/prediction_card.dart';
import 'package:dellsparkcity/tips_card.dart';
import 'package:dellsparkcity/tips_card2.dart';
import 'package:flutter/material.dart';

class InsightsPage extends StatelessWidget {
  const InsightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatApi = ChatApi();

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 5.0, left: 20, right: 0),
          child: Text(
            'Insights',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 2),
              
              // TipsCard and PredictionsCard wrapped in a Container with fixed height
              Container(
                //height: 350, // Adjust the height as needed
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TipsCard2(),
                      //child: TipsCard(),
                    ),
                    const SizedBox(width: 2),
                    const Expanded(
                      flex: 4,
                      child: PredictionsCard(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ChatPage(chatApi: chatApi),
              //ChatGPTCard(),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(240, 241, 243, 1),// Set the background color to grey
    );
  }
}

