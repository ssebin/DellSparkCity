import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'summary_card.dart';  // Import the SummaryCard widget

class TipsCard2 extends StatefulWidget {
  TipsCard2({super.key});

  @override
  _TipsCardState createState() => _TipsCardState();
}

class _TipsCardState extends State<TipsCard2> {
  final List<String> tipsList = [
    'Turning off the air-conditioner during lunch hour break can save up to RM200/day!',
    'Using LED bulbs can reduce your electricity consumption significantly.',
    'Unplugging devices when not in use can save energy and reduce bills.',
  ];

  final CarouselController _controller = CarouselController();
  bool _showSummary = false;

  void _toggleSummary() {
    setState(() {
      _showSummary = !_showSummary;
    });
  }

  @override
  Widget build(BuildContext context) {
    double cardHeight = 260;  //310

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Icon
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 0, bottom: 5),
              child: Row(
                children: [
                  const Text(
                    'Tips to Reduce',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: _toggleSummary,
                    child: SvgPicture.asset('assets/icons/lightbulb 1.svg', height: 14, width: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 0),

            // Carousel
            LayoutBuilder(
              builder: (context, constraints) {
                double width =
                    constraints.maxWidth < 340 ? constraints.maxWidth : 340;

                return Stack(
                  children: [
                    CarouselSlider.builder(
                      carouselController: _controller,
                      itemCount: tipsList.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 4.0, // Add shadow
                          shadowColor: Colors.grey.withOpacity(0.8), // Shadow color
                          child: SizedBox(
                            width: width,
                            height: cardHeight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Did you know?",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      tipsList[index],
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: cardHeight,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                      ),
                    ),
                    Positioned(
                      top: cardHeight / 2 - 15, // Center vertically
                      left: 15, // Inside the card
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () => _controller.previousPage(),
                        child: SvgPicture.asset('assets/icons/left_arrow.svg'),
                      ),
                    ),
                    Positioned(
                      top: cardHeight / 2 - 15, // Center vertically
                      right: 15, // Inside the card
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () => _controller.nextPage(),
                        child: SvgPicture.asset('assets/icons/right_arrow.svg'),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
        if (_showSummary)
          Positioned(
            right: 0,
            top: 30,
            child: SummaryCard(summary: 'The chart illustrates the distribution of overall energy consumption in commercial buildings in 2012, based on data from the U.S. Energy Information Administration. The most significant energy demand comes from space heating, accounting for 25% of the total energy use, followed by uses at 13%. Lighting, ventilation, and refrigeration each constitute 10% of the energy consumption. Cooling systems demand 9%, while water heating, cooking, and computing represent 7%, 7%, and 6%, respectively. Office equipment has the least share, contributing to 3% of the total energy used, with the entire energy consumption being 6,963 trillion Btu.'),
          ),
      ],
    );
  }
}
