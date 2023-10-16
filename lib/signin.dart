import 'package:flutter/material.dart';
import '../components/left_section.dart';
import '../components/right_section.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Dell Spark City',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(6, 114, 203, 1),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 75,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Row(
            children: [
              Expanded(
                flex: 1,
                child: LeftSection(),
              ),
              Expanded(
                flex: 1,
                child: RightSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
