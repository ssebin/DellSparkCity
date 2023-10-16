import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  _AirConditioningControlWidgetState createState() =>
      _AirConditioningControlWidgetState();
}

//const BottomSection({super.key});
bool isAirConditioningOn = false;
bool isLightOn = false;

//_CentralControlWidgetState createState() => _CentralControlWidgetState();

// class _CentralControlWidgetState extends State<BottomSection> {
//   bool isLightOn = false;
//   bool isAirConditioningOn = false;
//   double temperature = 22.0; // Initial temperature

class _AirConditioningControlWidgetState extends State<BottomSection> {
  bool isAirConditioningOn = false;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 530,
          height: 300,
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
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      const Text(
                        "Discussion Room",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Row(
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Tempurature',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                '24 C',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                              width:
                                  16.0), // Add horizontal spacing between the columns

                          Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: 250,
                                    height: 40,
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
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween, // Aligns text to the left and switch to the right
                                        children: [
                                          const Text(
                                            'Air Conditioning',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Switch(
                                            activeColor: Colors.blue,
                                            value: isAirConditioningOn,
                                            onChanged: (value) {
                                              setState(() {
                                                isAirConditioningOn = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                          const SizedBox(
                              height:
                                  16.0), // Add horizontal spacing between the columns

                          Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: 250,
                                    height: 40,
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
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween, // Aligns text to the left and switch to the right
                                        children: [
                                          const Text(
                                            'Light',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Switch(
                                            activeColor: Colors.blue,
                                            value: isLightOn,
                                            onChanged: (value) {
                                              setState(() {
                                                isLightOn = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                          const SizedBox(
                              height:
                                  16.0), // Add horizontal spacing between the columns

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        // Add logic for the "+" button here
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        16.0, // Add spacing between the buttons
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        // Add logic for the "-" button here
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ])
                  ])))
    ]);
  }
//}
}
