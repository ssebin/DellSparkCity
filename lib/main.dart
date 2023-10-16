import 'package:dellsparkcity/dashboard.dart';
import 'package:flutter/material.dart';
import 'base_page.dart';
import 'signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const SignInScreen(), // click continue with google button
    );
  }
}
