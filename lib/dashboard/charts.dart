import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// class Charts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Column(
//               children: [
//                 Text('Chart 1'),
//                 ChartWidget(),
//               ],
//             ),
//             Column(
//               children: [
//                 Text('Chart 2'),
//                 ChartWidget(),
//               ],
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Column(
//               children: [
//                 Text('Chart 3'),
//                 ChartWidget(),
//               ],
//             ),
//             Column(
//               children: [
//                 Text('Chart 4'),
//                 ChartWidget(),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class Charts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('Chart 1'),
//         ChartWidget(),
//       ],
//     );
//   }
// }

class Charts extends StatelessWidget {
  const Charts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Electricity Consumption",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              IconButton(
                                icon: Image.asset(
                                    'assets/icons/chatgpt_icon.png'), // Replace 'Icons.add' with the icon you want
                                onPressed: () {
                                  // Define the action when the button is pressed
                                },
                              ),
                            ],
                          ),
                          LineChartWidget(), // Move the LineChartWidget below the Row
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Renewable Energy Generated",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              IconButton(
                                icon: Image.asset(
                                    'assets/icons/chatgpt_icon.png'), // Replace 'Icons.add' with the icon you want
                                onPressed: () {
                                  // Define the action when the button is pressed
                                },
                              ),
                            ],
                          ),
                          LineChartWidget(), // Move the LineChartWidget below the Row
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Electricity Cost",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              IconButton(
                                icon: Image.asset(
                                    'assets/icons/chatgpt_icon.png'), // Replace 'Icons.add' with the icon you want
                                onPressed: () {
                                  // Define the action when the button is pressed
                                },
                              ),
                            ],
                          ),
                          BarChartWidget(), // Move the LineChartWidget below the Row
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Cost Saved",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              IconButton(
                                icon: Image.asset(
                                    'assets/icons/chatgpt_icon.png'), // Replace 'Icons.add' with the icon you want
                                onPressed: () {
                                  // Define the action when the button is pressed
                                },
                              ),
                            ],
                          ),
                          GroupedBarChartWidget(), // Move the LineChartWidget below the Row
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0, // Adjust the chart's height as needed
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          titlesData: FlTitlesData(show: true),
          borderData: FlBorderData(show: true),
          gridData: FlGridData(show: true),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 5.0)]),
            BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 7.0)]),
            BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 3.0)]),
          ],
        ),
      ),
    );
  }
}

class LineChartWidget extends StatelessWidget {
  final List<FlSpot> data = [
    FlSpot(0, 3),
    FlSpot(1, 1),
    FlSpot(2, 4),
    FlSpot(3, 2),
    FlSpot(4, 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 3,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: data,
              isCurved: true,
              color: Colors.blue,
              belowBarData: BarAreaData(show: true),
            ),
          ],
        ),
      ),
    );
  }
}

class BarChartWidget extends StatefulWidget {
  @override
  _BarChartWidgetState createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  final Radius radius = Radius.circular(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 3,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          titlesData: FlTitlesData(show: true),
          borderData: FlBorderData(show: true),
          gridData: FlGridData(show: true),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                  toY: 5.0,
                  color: Colors.green,
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  toY: 7.0,
                  color: Colors.orange,
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 3.0,
                  color: Color.fromARGB(255, 136, 52, 46),
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 3.0,
                  color: Color.fromARGB(255, 136, 52, 46),
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 3.0,
                  color: Color.fromARGB(255, 136, 52, 46),
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 3.0,
                  color: Color.fromARGB(255, 136, 52, 46),
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 3.0,
                  color: Color.fromARGB(255, 136, 52, 46),
                  width: 20,
                  borderRadius: BorderRadius.all(radius))
            ]),
          ],
        ),
        swapAnimationDuration: Duration(milliseconds: 500),
        swapAnimationCurve: Curves.easeInOut,
      ),
    );
  }
}

class GroupedBarChartWidget extends StatelessWidget {
  final Radius radius = Radius.circular(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 3,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          titlesData: FlTitlesData(show: true),
          borderData: FlBorderData(show: true),
          gridData: FlGridData(show: true),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                    toY: 5.0,
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(radius)),
                BarChartRodData(
                    toY: 3.0,
                    color: Colors.green,
                    borderRadius: BorderRadius.all(radius))
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                    toY: 7.0,
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(radius)),
                BarChartRodData(
                    toY: 4.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.all(radius))
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                    toY: 7.0,
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(radius)),
                BarChartRodData(
                    toY: 4.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.all(radius))
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                    toY: 7.0,
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(radius)),
                BarChartRodData(
                    toY: 4.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.all(radius))
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                    toY: 7.0,
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(radius)),
                BarChartRodData(
                    toY: 4.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.all(radius))
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                    toY: 7.0,
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(radius)),
                BarChartRodData(
                    toY: 4.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.all(radius))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
