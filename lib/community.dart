import 'package:flutter/material.dart';
import '../components/leaderboard_table.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      backgroundColor: const Color.fromRGBO(240, 241, 243, 1),
      body: Row(
        children: [
          //SideNavBar(),
          Expanded(
            child: SingleChildScrollView(
              // Allow the body to scroll
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          SizedBox(width: 730),
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
                              //child: FeaturedTeams(),
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
