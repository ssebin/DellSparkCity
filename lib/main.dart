
import 'package:dellsparkcity/dashboard.dart';
import 'package:flutter/material.dart';
import 'base_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasePage(
        child: DashboardPage(),
      ),
      debugShowCheckedModeBanner:
          false, // Set to false to hide the debug banner
      theme: ThemeData(
        fontFamily: 'Roboto', // Set the default font family to Roboto
      ),
    );
  }
}
