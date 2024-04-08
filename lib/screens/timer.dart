import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class timer extends StatefulWidget {
  const timer({super.key});

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  Duration duration = Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void addTime() {
    final addseconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addseconds;

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  String formatTime(int time) {
    if (time < 10) {
      return '0$time';
    } else {
      return '$time';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: NeumorphicText(
          "Timer",
          style: NeumorphicStyle(
            color: Colors.white,
            depth: 3,
            intensity: 1,
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: NeumorphicColors.decorationMaxDarkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  depth: 4,
                  intensity: 1,
                  boxShape: NeumorphicBoxShape.circle(),
                  color: Colors.black,
                ),
                child: Container(
                  height: 350,
                  width: 330,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NeumorphicText(
                            style: NeumorphicStyle(
                              color: Colors.white,
                              depth: 3,
                              intensity: 1,
                            ),
                            // "${formatTime(hourDigital)} : ${formatTime(minDigital)} "
                            ": ${formatTime(duration.inSeconds)}",
                            textStyle: NeumorphicTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 56,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: 2,
                        intensity: 1,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        color: Colors.black,
                      ),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NeumorphicText(
                                  "09:15",
                                  textStyle: NeumorphicTextStyle(fontSize: 28),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: 2,
                        intensity: 1,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        color: Colors.black,
                      ),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NeumorphicText(
                                  "09:15",
                                  textStyle: NeumorphicTextStyle(fontSize: 28),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: 2,
                        intensity: 1,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        color: Colors.black,
                      ),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NeumorphicText(
                                  "09:15",
                                  textStyle: NeumorphicTextStyle(fontSize: 28),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Neumorphic(
                        style: NeumorphicStyle(
                          depth: 2,
                          intensity: 1,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          color: Colors.black,
                        ),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    "09:15",
                                    textStyle:
                                        NeumorphicTextStyle(fontSize: 28),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                          depth: 2,
                          intensity: 1,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          color: Colors.black,
                        ),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    "09:15",
                                    textStyle:
                                        NeumorphicTextStyle(fontSize: 28),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                          depth: 2,
                          intensity: 1,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          color: Colors.black,
                        ),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    "09:15",
                                    textStyle:
                                        NeumorphicTextStyle(fontSize: 28),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NeumorphicButton(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            color: Colors.black),
                        onPressed: () {},
                        child: NeumorphicText(
                          "Start",
                          textStyle: NeumorphicTextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      NeumorphicButton(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            color: Colors.black),
                        onPressed: () {},
                        child: NeumorphicText(
                          "Reset",
                          textStyle: NeumorphicTextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
