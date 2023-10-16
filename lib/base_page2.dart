// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:signin_example/community2.dart';
// import 'package:signin_example/dashboard.dart';
// import 'package:signin_example/insights.dart';

// class BasePage extends StatelessWidget {
//   final Widget child;
//   final String currentPage;

//   const BasePage({super.key, required this.child, this.currentPage = 'Dashboard'});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(85.0),
//         child: Container(
//           decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: const Color(0xff1D1617).withOpacity(0.11),
//                 blurRadius: 40,
//                 spreadRadius: 0.0,
//               )
//             ],
//           ),
//           child: AppBar(
//             title: const Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 40.0),
//                   child: Text(
//                     'Dell Spark City',
//                     style: TextStyle(
//                       fontFamily: 'Roboto',
//                       color: Colors.blue,
//                       fontSize: 24,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             backgroundColor: Colors.white,
//             elevation: 0,
//             centerTitle: false,
//           ),
//         ),
//       ),

//       //drawer sidebar
//       body: Row(
//         children: [
//           Container(
//             width: 280,
//             color: const Color.fromARGB(255, 255, 255, 255),
//             child: ListView(
//               //padding: EdgeInsets.only(top: 17),
//               children: [
//                 Container(
//                   padding: const EdgeInsets.only(left: 33),
//                   color: currentPage == 'Dashboard' ? const Color(0xffD4D4D4) : null,
//                   child: ListTile(
//                     leading: SvgPicture.asset('assets/icons/dashboard.svg',
//                         height: 18, width: 18),
//                     title: const Text('Dashboard'),
//                     onTap: () {
//                       Navigator.of(context).pushReplacement(
//                         PageRouteBuilder(
//                           pageBuilder: (context, animation1, animation2) =>
//                               const BasePage(
//                                   currentPage: 'Dashboard',
//                                   child: DashboardPage()),
//                           transitionDuration: Duration.zero,
//                           transitionsBuilder:
//                               (context, animation1, animation2, child) {
//                             return FadeTransition(
//                                 opacity: animation1, child: child);
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(left: 33),
//                   color: currentPage == 'Insights' ? const Color(0xffD4D4D4) : null,
//                   child: ListTile(
//                     leading: SvgPicture.asset(
//                         'assets/icons/dds2_performance.svg',
//                         height: 18,
//                         width: 18),
//                     title: const Text('Insights'),
//                     onTap: () {
//                       Navigator.of(context).pushReplacement(
//                         PageRouteBuilder(
//                           pageBuilder: (context, animation1, animation2) =>
//                               BasePage(
//                                   child: InsightsPage(),
//                                   currentPage: 'Insights'),
//                           transitionDuration: Duration.zero,
//                           transitionsBuilder:
//                               (context, animation1, animation2, child) {
//                             return FadeTransition(
//                                 opacity: animation1, child: child);
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(left: 33),
//                   color: currentPage == 'Community' ? const Color(0xffD4D4D4) : null,
//                   child: ListTile(
//                     leading: SvgPicture.asset(
//                         'assets/icons/dds2_globe-simple.svg',
//                         height: 18,
//                         width: 18),
//                     title: const Text('Community'),
//                     onTap: () {
//                       Navigator.of(context).pushReplacement(
//                         PageRouteBuilder(
//                           pageBuilder: (context, animation1, animation2) =>
//                               const BasePage(
//                                   currentPage: 'Community',
//                                   child: CommunityPage()),
//                           transitionDuration: Duration.zero,
//                           transitionsBuilder:
//                               (context, animation1, animation2, child) {
//                             return FadeTransition(
//                                 opacity: animation1, child: child);
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(child: child) // page content
//         ],
//       ),
//     );
//   }
// }
