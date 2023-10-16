import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dellsparkcity/base_page.dart';
import 'package:dellsparkcity/dashboard.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              // TODO: Implement Google sign-in logic
              //for now just to go to dashboard
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const BasePage(child: DashboardPage()),
              ));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shadowColor: const Color.fromRGBO(0, 0, 0, 0.5),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color.fromRGBO(234, 234, 234, 1)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/icons8-google.svg', // Replace with the correct path to your SVG file
                  width: 24, // Set the desired width
                  height: 24, // Set the desired height
                ),
                const SizedBox(
                    width: 10), // Adjust spacing between icon and text
                const Text('Continue with Google'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              // TODO: Implement Facebook sign-in logic
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shadowColor: const Color.fromRGBO(0, 0, 0, 0.5),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color.fromRGBO(234, 234, 234, 1)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/icons8-facebook.svg', // Replace with the correct path to your SVG file
                  width: 24, // Set the desired width
                  height: 24, // Set the desired height
                ),
                const SizedBox(
                    width: 10), // Adjust spacing between icon and text
                const Text('Continue with Facebook'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              // TODO: Implement Microsoft sign-in logic
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shadowColor: const Color.fromRGBO(0, 0, 0, 0.5),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color.fromRGBO(234, 234, 234, 1)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/icons8-microsoft.svg', // Replace with the correct path to your SVG file
                  width: 24, // Set the desired width
                  height: 24, // Set the desired height
                ),
                const SizedBox(
                    width: 10), // Adjust spacing between icon and text
                const Text('Continue with Microsoft'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
