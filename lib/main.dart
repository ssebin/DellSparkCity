
import 'package:dellsparkcity/dashboard.dart';
import 'package:flutter/material.dart';
import 'base_page.dart';
import 'signin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
