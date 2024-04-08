import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: NeumorphicText(
          "TickTalkClock",
          style: NeumorphicStyle(
            color: Colors.white,
            depth: 3,
            intensity: 1,
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        //centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "TickTalkClock: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Your Time, Your Talk,",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Where Every Seconds Matters ...",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.alarm_on_sharp,
                                size: 65,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15, top: 5),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('analogclock');
                            },
                            child: Container(
                              height: 250,
                              width: 175,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.red.shade700,
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                              color: Colors.red,
                                              blurRadius: 15,
                                              spreadRadius: 5,
                                            )
                                          ],
                                          shape: BoxShape.circle,
                                        ),
                                        alignment: Alignment.center,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Transform.rotate(
                                              angle: 55 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 73,
                                                endIndent: 20,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 40 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 73,
                                                endIndent: 35,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 15 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 76,
                                                endIndent: 35,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 15 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 138,
                                                endIndent: 5,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 30 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 138,
                                                endIndent: 5,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 45 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 138,
                                                endIndent: 5,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: (30 * pi),
                                              child: Divider(
                                                indent: 138,
                                                endIndent: 5,
                                                thickness: 3,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Analog Clock",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('strapclock');
                            },
                            child: Container(
                              height: 250,
                              width: 175,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueAccent.shade700,
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle,
                                        ),
                                        alignment: Alignment.center,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CircularProgressIndicator(
                                              value: 40 * (pi / 30),
                                              strokeWidth: 2,
                                              strokeAlign: 47,
                                              color: Colors.white,
                                              strokeCap: StrokeCap.round,
                                            ),
                                            CircularProgressIndicator(
                                              value: 40 * (pi / 30),
                                              strokeWidth: 2,
                                              strokeAlign: 35,
                                              color: Colors.blue,
                                              strokeCap: StrokeCap.round,
                                            ),
                                            CircularProgressIndicator(
                                              value: 40 * (pi / 30),
                                              strokeWidth: 2,
                                              strokeAlign: 21,
                                              color: Colors.red,
                                              strokeCap: StrokeCap.round,
                                            ),
                                            Transform.rotate(
                                              angle: 55 * (pi / 30),
                                              child: Divider(
                                                color: Colors.blue,
                                                indent: 73,
                                                endIndent: 20,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 40 * (pi / 30),
                                              child: Divider(
                                                color: Colors.red,
                                                indent: 73,
                                                endIndent: 35,
                                                thickness: 3,
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 15 * (pi / 30),
                                              child: Divider(
                                                color: Colors.white,
                                                indent: 76,
                                                endIndent: 11,
                                                thickness: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Strap Clock",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('digitalclock');
                              },
                              child: Container(
                                height: 250,
                                width: 175,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 15,
                                      spreadRadius: 3,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.white,
                                                blurRadius: 15,
                                                spreadRadius: 5,
                                              )
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "01 : 11 : 11",
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Digital Clock",
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('alarmpage');
                              },
                              child: Container(
                                height: 250,
                                width: 175,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.deepPurple,
                                      blurRadius: 15,
                                      spreadRadius: 3,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.deepPurple,
                                                blurRadius: 15,
                                                spreadRadius: 5,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "11",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Text(
                                                  "hour : ",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Text(
                                                "11",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Text(
                                                  "min",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Alarm Clock",
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('timer');
                              },
                              child: Container(
                                height: 250,
                                width: 175,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.pinkAccent,
                                      blurRadius: 15,
                                      spreadRadius: 3,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.pinkAccent,
                                                blurRadius: 15,
                                                spreadRadius: 5,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "11",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "s",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Timer",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('stopwatch');
                              },
                              child: Container(
                                height: 250,
                                width: 175,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                  color: Colors.green,
                                                  blurRadius: 10,
                                                  spreadRadius: 5,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.green,
                                                blurRadius: 15,
                                                spreadRadius: 5,
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          alignment: Alignment.center,
                                          child: Stack(
                                            children: [
                                              Transform.rotate(
                                                angle: 45 * (pi / 30),
                                                child: Divider(
                                                  color: Colors.green,
                                                  indent: 73,
                                                  endIndent: 35,
                                                  thickness: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 68),
                                                child: Container(
                                                  height: 15,
                                                  width: 13,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Stop Watch",
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
