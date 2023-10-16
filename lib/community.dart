import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../components/leaderboard_table.dart';
import '../components/featured_teams.dart';
import '../components/energy_marketplace.dart';
import '../components/forum.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 241, 243, 1),
      body: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              // Allow the body to scroll
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //ElevatedButton(
                    //onPressed: fetchData,
                    //child: Text('Fetch Data'),
                    //),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20.0,
                        //top: 10.0,
                      ),
                      child: Text(
                        'Community',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Leaderboard',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(width: 10),
                          Tooltip(
                            message:
                                'Your floor\'s ranking is based on these metrics.', // Replace with your tooltip message
                            child: SvgPicture.asset(
                              'assets/icons/help-cir.svg', // Adjust the path to your SVG
                              height: 16.0, // Adjust the height as needed
                              width: 16.0, // Adjust the width as needed
                              color: const Color.fromRGBO(
                                  14, 14, 14, 1), // Adjust the color as needed
                            ),
                          ),
                          SizedBox(width: 650),
                          Text(
                            'Featured Teams',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Row(
                        children: [
                          Container(
                            child: LeaderboardTable(),
                          ),
                          SizedBox(width: 40),
                          Container(
                            child: FeaturedTeams(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
                      child: Row(
                        children: [
                          Text(
                            'Energy Marketplace',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(width: 10.0), // Add a SizedBox for spacing
                          Tooltip(
                            message:
                                'This will contribute to your team\'s renewable energy generated.', // Replace with your tooltip message
                            child: SvgPicture.asset(
                              'assets/icons/help-cir.svg', // Adjust the path to your SVG
                              height: 16.0, // Adjust the height as needed
                              width: 16.0, // Adjust the width as needed
                              color: const Color.fromRGBO(
                                  14, 14, 14, 1), // Adjust the color as needed
                            ),
                          ),
                        ],
                      ),
                    ),

                    EnergyMarketplace(),
                    SizedBox(height: 40),
                    Text(
                      'Forum', // Add the "Forum" text
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 30),
                    Forum(), // Add the Forum widget
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  /*
  static void fetchData() async {
    final String apiUrl = 'us-central1-sparkcity-e1a0a.cloudfunctions.net';
    final Uri apiUri = Uri.https(apiUrl, '/getFloorData');

    try {
      final response = await http.get(apiUri);
      if (response.statusCode == 200) {
        print('Response: ${response.body}');
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
  */
}
