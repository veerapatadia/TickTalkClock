import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ticktalkclock/screens/alarm.dart';
import 'package:ticktalkclock/screens/analog.dart';
import 'package:ticktalkclock/screens/digital.dart';
import 'package:ticktalkclock/screens/homepage.dart';
import 'package:ticktalkclock/screens/stopwatch.dart';
import 'package:ticktalkclock/screens/strap.dart';
import 'package:ticktalkclock/screens/timer.dart';

void main() {
  runApp(
    NeumorphicApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homepage(),
        'analogclock': (context) => analogclock(),
        'strapclock': (context) => strapclock(),
        'digitalclock': (context) => digitalclock(),
        'alarmpage': (context) => alarmpage(),
        'timer': (context) => timer(),
        'stopwatch': (context) => stopwatch(),
      },
    ),
  );
}
