import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ticktalkclock/screens/strap.dart';

class digitalclock extends StatefulWidget {
  const digitalclock({super.key});

  @override
  State<digitalclock> createState() => _digitalclockState();
}

class _digitalclockState extends State<digitalclock> {
  DateTime time = DateTime.now();

  double sec = (3 * pi) / 2;
  int secDigital = 0;
  double min = (3 * pi) / 2;
  int minDigital = 0;
  double hour = (3 * pi) / 2;
  int hourDigital = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      minDigital = time.minute;
      secDigital = time.second;
      hourDigital = time.hour;

      sec = sec + secDigital * (pi / 30);
      min = min + minDigital * (pi / 30);
      hour = hour + hourDigital * (pi / 6);
    });
    timer();
  }

  timer() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        if (secDigital >= 59) {
          sec = (3 * pi) / 2;
          secDigital = 0;
          minDigital++;
          min = min + (pi / 30);
        } else if (minDigital >= 59) {
          min = (3 * pi) / 2;
          minDigital = 0;
          hour = hour + (pi / 6);
          hourDigital++;
        } else {
          sec = sec + (pi / 30);
          secDigital++;
        }
      });
      timer();
    });
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
          "Digital Clock",
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
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                  color: Colors.black,
                ),
                child: Container(
                  height: 170,
                  width: 330,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          NeumorphicText(
                            style: NeumorphicStyle(
                              color: Colors.white,
                              depth: 3,
                              intensity: 1,
                            ),
                            "Hour",
                            textStyle: NeumorphicTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                          NeumorphicText(
                            style: NeumorphicStyle(
                              color: Colors.white,
                              depth: 3,
                              intensity: 1,
                            ),
                            "Min",
                            textStyle: NeumorphicTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                          NeumorphicText(
                            style: NeumorphicStyle(
                              color: Colors.white,
                              depth: 3,
                              intensity: 1,
                            ),
                            "Sec",
                            textStyle: NeumorphicTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NeumorphicText(
                            style: NeumorphicStyle(
                              color: Colors.white,
                              depth: 3,
                              intensity: 1,
                            ),
                            "${formatTime(hourDigital)} : ${formatTime(minDigital)} : ${formatTime(secDigital)}",
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
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NeumorphicButton(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave, color: Colors.white),
                  onPressed: () {},
                  child: (hourDigital > 12)
                      ? Icon(
                          Icons.nightlight_round_sharp,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.sunny,
                          color: Colors.black,
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
