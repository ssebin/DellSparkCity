import 'package:dellsparkcity/insights.dart';
//import 'package:dellsparkcity/tips_card.dart';
import 'package:flutter/material.dart';
//import 'base_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InsightsPage(),
      debugShowCheckedModeBanner:false, // Set to false to hide the debug banner
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0, // Set elevation to 0 to remove the shadow effect
        ),
      ),
    );
  }
}
