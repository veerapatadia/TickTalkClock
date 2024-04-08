import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class analogclock extends StatefulWidget {
  const analogclock({super.key});

  @override
  State<analogclock> createState() => _analogclockState();
}

class _analogclockState extends State<analogclock> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: NeumorphicText(
          "Analog Clock",
          style: NeumorphicStyle(
            color: Colors.white,
            depth: 3,
            intensity: 1,
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 25,
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
                child: SizedBox(
                  height: 360,
                  width: 360,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.rotate(
                        angle: sec,
                        child: Divider(
                          color: Colors.white,
                          indent: MediaQuery.of(context).size.width / 2.3,
                          endIndent: 35,
                          thickness: 3,
                        ),
                      ),
                      Transform.rotate(
                        angle: min,
                        child: Divider(
                          color: Colors.white,
                          indent: MediaQuery.of(context).size.width / 2.3,
                          endIndent: 60,
                          thickness: 3,
                        ),
                      ),
                      Transform.rotate(
                        angle: hour,
                        child: Divider(
                          color: Colors.red,
                          indent: MediaQuery.of(context).size.width / 2.3,
                          endIndent: 70,
                          thickness: 3,
                        ),
                      ),
                      Stack(
                        children: [
                          Transform.rotate(
                            angle: 3 * pi / 2,
                            child: Divider(
                              color: Colors.white,
                              indent: 340,
                              thickness: 3,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "9",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Transform.rotate(
                        angle: 2 * pi / 2,
                        child: Divider(
                          color: Colors.white,
                          indent: 345,
                          thickness: 3,
                        ),
                      ),
                      Stack(
                        children: [
                          Transform.rotate(
                            angle: (30 * pi),
                            child: Divider(
                              indent: 347,
                              thickness: 3,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Transform.rotate(
                        angle: 15 * (pi / 30),
                        child: Divider(
                          indent: 347,
                          thickness: 3,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Transform.rotate(
                            angle: (pi * 30),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 300),
                        child: Transform.rotate(
                          angle: (pi * 30),
                          child: Text(
                            "12",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 300),
                        child: Transform.rotate(
                          angle: (pi * 30),
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
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
    );
  }
}
