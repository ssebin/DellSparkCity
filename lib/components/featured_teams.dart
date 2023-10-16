import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedTeams extends StatefulWidget {
  @override
  _FeaturedTeamsState createState() => _FeaturedTeamsState();
}

class _FeaturedTeamsState extends State<FeaturedTeams> {
  int _currentPageIndex = 0;

  final List<String> texts = [
    'Morbi accumsan pharetra tortor vel semper. Etiam vel posuere turpis. Proin blandit facilisis facilisis. Proin blandit facilisis facilisis for.',
    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.',
    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias.',
    'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod.'
    // Add more card texts as needed
  ];

  final List<String> imagePaths = [
    'assets/team1.png',
    'assets/team2.png',
    'assets/team3.jpg',
    'assets/team4.jpg',
    // Add more image paths as needed
  ];

  void _nextCard() {
    setState(() {
      _currentPageIndex = (_currentPageIndex + 1) % texts.length;
    });
  }

  void _prevCard() {
    setState(() {
      _currentPageIndex = (_currentPageIndex - 1) % texts.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 600),
      child: Container(
        key: ValueKey<int>(_currentPageIndex),
        padding: const EdgeInsets.all(25.0),
        width: 400.0,
        height: 370.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              texts[_currentPageIndex],
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 400.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePaths[_currentPageIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  // Handle "Read more" button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Read more'),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: _prevCard,
                    child: SvgPicture.asset(
                      'assets/icons/chevron-left.svg',
                      width: 18,
                      height: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: _nextCard,
                    child: SvgPicture.asset(
                      'assets/icons/chevron-right.svg',
                      width: 18,
                      height: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
