import 'package:meditation_app/components/sleep.dart';

class SleepRecords {
  List<Sleep> _sleepTracker = [];

  void addSleep(Sleep sleep) {
    _sleepTracker.insert(0, sleep);
    int lng = _sleepTracker.length;
  }

  List<Sleep> getSleepItems() {
    return _sleepTracker;
  }
}
