import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  _AirConditioningControlWidgetState createState() =>
      _AirConditioningControlWidgetState();
}

//const BottomSection({super.key});
bool isAirConditioningOn = false;
bool isLightOn = false;
bool isAirConditioningOn2 = false;
bool isLightOn2 = false;
//_CentralControlWidgetState createState() => _CentralControlWidgetState();

// class _CentralControlWidgetState extends State<BottomSection> {
//   bool isLightOn = false;
//   bool isAirConditioningOn = false;
//   double temperature = 22.0; // Initial temperature

class _AirConditioningControlWidgetState extends State<BottomSection> {
  bool isAirConditioningOn = false;
  bool isAirConditioningOn2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            bottom: 20.0,
            //top: 10.0,
          ),
          child: Text(
            'Central System',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
            width: 1150,
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

            //CS CARD STARTS HERE
            child: Padding(
                //padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 530,
                      height: 250,
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
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Discussion Room",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 12.0),
                                    Row(children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 30.0,
                                            left:
                                                30.0), // Adjust the padding as needed
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Temperature',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Text(
                                              '24 C',
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40.0),
                                      // Add horizontal spacing between the columns

                                      //Padding(padding: EdgeInsets.only(top: 50.0)),
                                      Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 20.0),
                                                child: Container(
                                                    width: 300,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Aligns text to the left and switch to the right
                                                        children: [
                                                          const Text(
                                                            'Air Conditioning',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Switch(
                                                            activeColor:
                                                                Colors.blue,
                                                            value:
                                                                isAirConditioningOn,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                isAirConditioningOn =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    )))
                                          ],
                                        ),

                                        const SizedBox(
                                            height:
                                                16.0), // Add horizontal spacing between the columns

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                width: 300,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 5,
                                                      blurRadius: 7,
                                                      offset: Offset(0, 3),
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween, // Aligns text to the left and switch to the right
                                                    children: [
                                                      const Text(
                                                        'Light',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Switch(
                                                        activeColor:
                                                            Colors.blue,
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

                                        const SizedBox(
                                            height:
                                                16.0), // Add horizontal spacing between the columns

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                            const SizedBox(
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
                                      ]),
                                    ]),
                                  ],
                                ),
                              ])),
                    ),

                    SizedBox(width: 40.0), // Add vertical spacing

                    Container(
                      width: 530,
                      height: 250,
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
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Board Room",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 12.0),
                                    Row(children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 30.0,
                                            left:
                                                30.0), // Adjust the padding as needed
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Temperature',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Text(
                                              '24 C',
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40.0),
                                      // Add horizontal spacing between the columns

                                      //Padding(padding: EdgeInsets.only(top: 50.0)),
                                      Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 20.0),
                                                child: Container(
                                                    width: 300,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Aligns text to the left and switch to the right
                                                        children: [
                                                          const Text(
                                                            'Air Conditioning',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Switch(
                                                            activeColor:
                                                                Colors.blue,
                                                            value:
                                                                isAirConditioningOn2,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                isAirConditioningOn2 =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    )))
                                          ],
                                        ),

                                        const SizedBox(
                                            height:
                                                16.0), // Add horizontal spacing between the columns

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                width: 300,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 5,
                                                      blurRadius: 7,
                                                      offset: Offset(0, 3),
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween, // Aligns text to the left and switch to the right
                                                    children: [
                                                      const Text(
                                                        'Light',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Switch(
                                                        activeColor:
                                                            Colors.blue,
                                                        value: isLightOn2,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            isLightOn2 = value;
                                                          });
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        ),

                                        const SizedBox(
                                            height:
                                                16.0), // Add horizontal spacing between the columns

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                            const SizedBox(
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
                                      ]),
                                    ]),
                                  ],
                                ),
                              ])),
                    )
                  ],
                ))),

        const SizedBox(
            height: 30.0), // Add horizontal spacing between the columns

        //CS CARD ENDS HERE
      ], //END OF WHOLE CONTAINER
    );
  }
//}
}
