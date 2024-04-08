import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class strapclock extends StatefulWidget {
  const strapclock({super.key});

  @override
  State<strapclock> createState() => _strapclockState();
}

class _strapclockState extends State<strapclock> {
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
          "Strap Clock",
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
                      CircularProgressIndicator(
                        value: secDigital * (1 / 60),
                        strokeWidth: 10,
                        strokeAlign: 27,
                        color: Colors.white,
                        strokeCap: StrokeCap.round,
                      ),
                      CircularProgressIndicator(
                        value: minDigital * (1 / 60),
                        strokeWidth: 10,
                        strokeAlign: 21,
                        color: Colors.blue,
                        strokeCap: StrokeCap.round,
                      ),
                      CircularProgressIndicator(
                        value: hourDigital * (1 / 12),
                        strokeWidth: 10,
                        strokeAlign: 16,
                        color: Colors.red,
                        strokeCap: StrokeCap.round,
                      ),
                      Transform.rotate(
                        angle: sec,
                        child: Divider(
                          color: Colors.white,
                          indent: MediaQuery.of(context).size.width / 2.3,
                          endIndent: 30,
                          thickness: 3,
                        ),
                      ),
                      Transform.rotate(
                        angle: min,
                        child: Divider(
                          color: Colors.blue,
                          indent: MediaQuery.of(context).size.width / 2.3,
                          endIndent: 52,
                          thickness: 3,
                        ),
                      ),
                      Transform.rotate(
                        angle: hour,
                        child: Divider(
                          color: Colors.red,
                          indent: MediaQuery.of(context).size.width / 2.3,
                          endIndent: 80,
                          thickness: 3,
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
