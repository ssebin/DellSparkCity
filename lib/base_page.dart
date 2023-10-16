import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dashboard.dart'; // Import your dashboard page
import 'insights.dart'; // Import your insights page
import 'community.dart'; // Import your community page
import 'package:flutter_svg/svg.dart';
import 'signin.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final String currentPage;

  const BasePage(
      {super.key, required this.child, this.currentPage = 'Dashboard'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Dell Spark City',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color.fromRGBO(6, 114, 203, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 65,
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey, // Set the color of the border
            height: 1.0, // Set the height of the border
          ),
          preferredSize: Size.fromHeight(1.0), // Set the preferred size
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/profile.svg',
                  height: 18,
                  width: 18,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
                const SizedBox(width: 8), // Add padding between icon and text
                Text(
                  'Pika Kim',
                  style: TextStyle(
                    color: const Color.fromRGBO(99, 99, 99, 1),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                    width: 8), // Add padding between text and chevron-down icon
                PopupMenuButton<String>(
                  offset: const Offset(
                      0, 30), // Adjust the vertical offset as needed
                  onSelected: (value) {
                    if (value == 'logout') {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            SignInScreen(), // Navigate to SignInScreen
                      ));
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'logout',
                      child: Text('Log Out'),
                    ),
                  ],
                  child: SvgPicture.asset(
                    'assets/icons/chevron-down.svg',
                    height: 18,
                    width: 18,
                    color: const Color.fromRGBO(99, 99, 99, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      //drawer sidebar
      body: Row(
        children: [
          Container(
            width: 250,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: ListView(
              //padding: EdgeInsets.only(top: 17),
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  color: currentPage == 'Dashboard'
                      ? const Color(0xffD4D4D4)
                      : null,
                  child: ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/dashboard.svg',
                      height: 18,
                      width: 18,
                      color: const Color.fromRGBO(99, 99, 99, 1),
                    ),
                    title: const Text('Dashboard',
                        style: TextStyle(
                            color: const Color.fromRGBO(99, 99, 99, 1))),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              BasePage(
                                  currentPage: 'Dashboard',
                                  child: DashboardPage()),
                          transitionDuration: Duration.zero,
                          transitionsBuilder:
                              (context, animation1, animation2, child) {
                            return FadeTransition(
                                opacity: animation1, child: child);
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  color: currentPage == 'Insights'
                      ? const Color(0xffD4D4D4)
                      : null,
                  child: ListTile(
                    leading: SvgPicture.asset('assets/icons/insights.svg',
                        height: 18,
                        width: 18,
                        color: const Color.fromRGBO(99, 99, 99, 1)),
                    title: const Text('Insights',
                        style: TextStyle(
                            color: const Color.fromRGBO(99, 99, 99, 1))),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              BasePage(
                                  child: InsightsPage(),
                                  currentPage: 'Insights'),
                          transitionDuration: Duration.zero,
                          transitionsBuilder:
                              (context, animation1, animation2, child) {
                            return FadeTransition(
                                opacity: animation1, child: child);
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  color: currentPage == 'Community'
                      ? const Color(0xffD4D4D4)
                      : null,
                  child: ListTile(
                    leading: SvgPicture.asset('assets/icons/community.svg',
                        height: 18,
                        width: 18,
                        color: const Color.fromRGBO(99, 99, 99, 1)),
                    title: const Text('Community',
                        style: TextStyle(
                            color: const Color.fromRGBO(99, 99, 99, 1))),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const BasePage(
                                  currentPage: 'Community',
                                  child: CommunityPage()),
                          transitionDuration: Duration.zero,
                          transitionsBuilder:
                              (context, animation1, animation2, child) {
                            return FadeTransition(
                                opacity: animation1, child: child);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: child) // page content
        ],
      ),
    );
  }
}
