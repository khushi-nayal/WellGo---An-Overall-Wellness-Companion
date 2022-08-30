import 'package:flutter/material.dart';
import 'package:meditation_app/components/sleep.dart';
import 'package:meditation_app/components/sleep_tracker.dart';

import 'screens/landing_page.dart';

SleepRecords tracker = SleepRecords();
List<Sleep> sleepRecords = tracker.getSleepItems();
void main() => runApp(SleepTracker());

class SleepTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(sleepRecords),
    );
  }
}
