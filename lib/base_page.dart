import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dashboard/dashboard.dart'; // Import your dashboard page
import 'insights.dart'; // Import your insights page
import 'community.dart'; // Import your community page
import 'package:flutter_svg/svg.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final String currentPage;

  const BasePage(
      {super.key, required this.child, this.currentPage = 'Dashboard'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: const Color.fromRGBO(
                    99, 99, 99, 1), // Adjust the color as needed
                width: 1.0, // Adjust the width as needed
              ),
            ),
          ),
          child: AppBar(
            title: const Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Dell Spark City',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color.fromRGBO(6, 114, 203, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 65,
          ),
        ),
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
                    leading: SvgPicture.asset('assets/icons/dashboard.svg',
                        height: 18, width: 18),
                    title: const Text('Dashboard'),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const BasePage(
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
                        height: 18, width: 18),
                    title: const Text('Insights'),
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
                        height: 18, width: 18),
                    title: const Text('Community'),
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
