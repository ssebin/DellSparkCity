import 'package:dellsparkcity/dashboard/bottom.dart';
import 'package:dellsparkcity/dashboard/charts.dart';
import 'package:dellsparkcity/dashboard/mid.dart';
import 'package:dellsparkcity/dashboard/top.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            TopSection(),
            MidSection(),
            Charts(),
            BottomSection()
          ]),
        ));
  }
}
