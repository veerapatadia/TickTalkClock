import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class stopwatch extends StatefulWidget {
  const stopwatch({super.key});

  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  int seconds = 0;
  int minutes = 0;
  int hours = 0;
  String digSec = "00", digMin = "00", digHour = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digSec = "00";
      digMin = "00";
      digHour = "00";

      started = false;

      laps.clear();
    });
  }

  void addLaps() {
    String lap = "$digHour:$digMin:$digSec";
    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes++;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;

        digSec = (seconds >= 10) ? "$seconds" : "0$seconds";
        digMin = (minutes >= 10) ? "$minutes" : "0$minutes";
        digHour = (hours >= 10) ? "$hours" : "0$hours";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: NeumorphicText(
          "Stop Watch",
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
              Container(
                height: 80,
                width: 300,
                //color: Colors.red,
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
                          "$digHour : $digMin : $digSec",
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
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    depth: 4,
                    intensity: 1,
                    boxShape:
                        NeumorphicBoxShape.beveled(BorderRadius.circular(10)),
                    color: Colors.black,
                  ),
                  child: Container(
                      height: 400,
                      width: 360,
                      alignment: Alignment.center,
                      child: ListView.builder(
                        itemCount: laps.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                top: 15, left: 15, right: 15, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Lap ${index + 1}",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  "${laps[index]}",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NeumorphicButton(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            color: Colors.black),
                        onPressed: () {
                          (!started) ? start() : stop();
                        },
                        child: NeumorphicText(
                          (!started) ? "Start" : "Pause",
                          textStyle: NeumorphicTextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      (started == true)
                          ? NeumorphicButton(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  color: Colors.black),
                              onPressed: () {
                                addLaps();
                              },
                              child: NeumorphicText(
                                "Lap",
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            )
                          : NeumorphicButton(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  color: Colors.black),
                              onPressed: () {},
                              child: NeumorphicText(
                                "Lap",
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                      NeumorphicButton(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            color: Colors.black),
                        onPressed: () {
                          reset();
                        },
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
