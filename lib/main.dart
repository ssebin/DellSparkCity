
import 'package:dellsparkcity/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'base_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';




void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}
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
