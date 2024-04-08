import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ticktalkclock/utils/alarm.dart';

class alarmpage extends StatefulWidget {
  const alarmpage({super.key});

  @override
  State<alarmpage> createState() => _alarmpageState();
}

class _alarmpageState extends State<alarmpage> {
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
          "Alarm Clock",
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
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: 3,
                        intensity: 1,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20),
                        ),
                        color: Colors.black,
                      ),
                      child: (hourDigital > 12)
                          ? Container(
                              width: 370,
                              height: 230,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://i.pinimg.com/564x/c1/c5/7d/c1c57d01d62e671a8d492ff13b2586af.jpg"),
                                ),
                              ),
                            )
                          : Container(
                              width: 370,
                              height: 230,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://i.pinimg.com/564x/5e/80/f5/5e80f58674ec92f077f01904dda208dd.jpg"),
                                ),
                              ),
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
                          depth: 3,
                          intensity: 1,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20),
                          ),
                          color: Colors.black,
                        ),
                        child: Container(
                          width: 370,
                          height: 70,
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
                                    "${formatTime(hourDigital)}",
                                    textStyle: NeumorphicTextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 56,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 10),
                                    child: NeumorphicText(
                                      style: NeumorphicStyle(
                                        color: Colors.white,
                                        depth: 3,
                                        intensity: 1,
                                      ),
                                      "hour",
                                      textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  NeumorphicText(
                                    style: NeumorphicStyle(
                                      color: Colors.white,
                                      depth: 3,
                                      intensity: 1,
                                    ),
                                    " : ${formatTime(minDigital)}",
                                    textStyle: NeumorphicTextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 56,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, left: 10),
                                    child: NeumorphicText(
                                      style: NeumorphicStyle(
                                        color: Colors.white,
                                        depth: 3,
                                        intensity: 1,
                                      ),
                                      "min",
                                      textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
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
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 15),
                            height: 60,
                            width: 380,
                            child: Padding(
                              padding: EdgeInsets.only(right: 280),
                              child: NeumorphicText(
                                "Alarm",
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...Clock.allalarm.map(
                        (e) => Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Neumorphic(
                                    style: NeumorphicStyle(
                                      depth: 2,
                                      intensity: 1,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(20)),
                                      color: Colors.black,
                                    ),
                                    child: Container(
                                      height: 100,
                                      width: 365,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                NeumorphicText(
                                                  "${e['time']}",
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                          fontSize: 30),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 6, left: 10),
                                                  child: NeumorphicText(
                                                    "AM",
                                                    textStyle:
                                                        NeumorphicTextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      e['on'] = !e['on'];
                                                    });
                                                  },
                                                  child: Switch(
                                                    value: e['on'],
                                                    onChanged: (val) {
                                                      setState(() {
                                                        e['on'] = val;
                                                      });
                                                    },
                                                    activeColor:
                                                        Colors.deepPurple,
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
                            ],
                          ),
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
