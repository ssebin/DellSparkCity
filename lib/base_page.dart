import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  
        backgroundColor: Colors.white,
        title: Text(
          'Dell Spark City',
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0, // Set elevation to 0 to remove shadow effect
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey, // Grey stroke color
            height: 1.0,
          ),
        ),
        automaticallyImplyLeading: false, // Hide the back button
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey, // Grey stroke color
            width: 1.0, // Stroke width
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200], // Grey background color for the body
        child: Center(
          child: Text('Your dashboard content goes here'),
        ),
      ),
    );
  }
}
