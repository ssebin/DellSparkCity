
import 'package:dellsparkcity/dashboard.dart';
import 'package:flutter/material.dart';
import 'base_page.dart';
import 'signin.dart';
import 'package:firebase_core/firebase_core.dart';

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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAi2_MQvfgXqtBKKXFZieoHN9mDsWmSMD8",
        authDomain: "sparkcity-e1a0a.firebaseapp.com",
        projectId: "sparkcity-e1a0a",
        storageBucket: "sparkcity-e1a0a.appspot.com",
        messagingSenderId: "700048086044",
        appId: "1:700048086044:web:2c86160609b9745afdbbd9"),
  );
  runApp(MyApp());
}
