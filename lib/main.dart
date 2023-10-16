import 'package:flutter/material.dart';
import 'base_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasePage(),
      debugShowCheckedModeBanner:
          false, // Set to false to hide the debug banner
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0, // Set elevation to 0 to remove the shadow effect
        ),
      ),
    );
  }
}
