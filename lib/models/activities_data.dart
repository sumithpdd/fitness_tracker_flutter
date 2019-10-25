import 'dart:collection';

import 'package:fitness_tracker_flutter/MockData/mockdata.dart';
import 'package:fitness_tracker_flutter/models/activity.dart';
import 'package:fitness_tracker_flutter/models/split.dart';
import 'package:fitness_tracker_flutter/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ActivitiesData extends ChangeNotifier {
  ThemeData _themeData;
  final User user;
  ActivitiesData(this.user, this._themeData);

  getTheme() => _themeData;

  setTheme( ) async {
    if(user.username == MockData.usernameMorning){
      _themeData =  MockData.redTheme;
    }else{
        _themeData = MockData.greenTheme;
      }
    notifyListeners();
  }

  List<Activity> _activities = [
    // const Activity(
    //   dateTime: 'August 6, 2019 at 11:35 AM',
    //   distance: '11.00 km',
    //   pace: '5:00 /km',
    //   time: '54m 59s',
    //   description: 'Running - training for Symposium',
    //   splits: [
    //     Split(km: 1, pace: Duration(minutes: 4, seconds: 57), elev: -7),
    //     Split(km: 2, pace: Duration(minutes: 4, seconds: 38), elev: -13),
    //     Split(km: 3, pace: Duration(minutes: 4, seconds: 58), elev: -2),
    //     Split(km: 4, pace: Duration(minutes: 5, seconds: 6), elev: 3),
    //     Split(km: 5, pace: Duration(minutes: 4, seconds: 53), elev: -3),
    //     Split(km: 6, pace: Duration(minutes: 5, seconds: 10), elev: 1),
    //     Split(km: 7, pace: Duration(minutes: 4, seconds: 54), elev: 1),
    //     Split(km: 8, pace: Duration(minutes: 5, seconds: 03), elev: -2),
    //     Split(km: 9, pace: Duration(minutes: 5, seconds: 13), elev: 4),
    //     Split(km: 10, pace: Duration(minutes: 5, seconds: 01), elev: 15),
    //     Split(km: 11, pace: Duration(minutes: 5, seconds: 03), elev: 5),
    //   ],
    // ),
    // const Activity(
    //   dateTime: 'September 25, 2019 at 7:06 AM',
    //   distance: '18.52 km',
    //   pace: '5:02 /km',
    //   time: '1h 33m',
    //   description: 'Half Marathon training',
    //   splits: [
    //     Split(km: 1, pace: Duration(minutes: 5, seconds: 0), elev: -7),
    //     Split(km: 2, pace: Duration(minutes: 4, seconds: 48), elev: -13),
    //     Split(km: 3, pace: Duration(minutes: 4, seconds: 58), elev: -2),
    //     Split(km: 4, pace: Duration(minutes: 5, seconds: 8), elev: 3),
    //     Split(km: 5, pace: Duration(minutes: 4, seconds: 58), elev: -3),
    //     Split(km: 6, pace: Duration(minutes: 5, seconds: 6), elev: 1),
    //     Split(km: 7, pace: Duration(minutes: 5, seconds: 2), elev: 1),
    //     Split(km: 8, pace: Duration(minutes: 4, seconds: 59), elev: -2),
    //     Split(km: 9, pace: Duration(minutes: 4, seconds: 55), elev: 3),
    //     Split(km: 10, pace: Duration(minutes: 4, seconds: 52), elev: -3),
    //     Split(km: 11, pace: Duration(minutes: 5, seconds: 9), elev: 1),
    //     Split(km: 12, pace: Duration(minutes: 4, seconds: 59), elev: 1),
    //     Split(km: 13, pace: Duration(minutes: 4, seconds: 59), elev: -2),
    //     Split(km: 14, pace: Duration(minutes: 5, seconds: 10), elev: 3),
    //     Split(km: 15, pace: Duration(minutes: 5, seconds: 0), elev: -3),
    //     Split(km: 16, pace: Duration(minutes: 5, seconds: 13), elev: 1),
    //     Split(km: 17, pace: Duration(minutes: 5, seconds: 8), elev: 11),
    //     Split(km: 18, pace: Duration(minutes: 5, seconds: 11), elev: 15),
    //   ],
    // ),
    // const Activity(
    //   dateTime: 'August 1, 2019 at 11:53 AM',
    //   distance: '10.37 km',
    //   pace: '4:54 /km',
    //   time: '50m 52s',
    // ),
    // const Activity(
    //   dateTime: 'July 29, 2019 at 11:19 AM',
    //   distance: '11.00 km',
    //   pace: '4:59 /km',
    //   time: '54m 51s',
    // ),
    // const Activity(
    //   dateTime: 'July 26, 2019 at 9:40 AM',
    //   distance: '8.14 km',
    //   pace: '4:57 /km',
    //   time: '50m 19s',
    // ),
  ];

  UnmodifiableListView<Activity> get activities {
    return UnmodifiableListView(_activities);
  }

  void addActivity() {
    Activity activity;

    if (user.username == MockData.usernameMorning) {
      activity = Activity(
          dateTime: 'November 6, 2019 at 06:35 AM',
          distance: '10.00 km',
          pace: '5:00 /km',
          time: '54m 59s',
          description: 'Early morning sweating before @ Symposium 2019',
          splits: [
            Split(km: 1, pace: Duration(minutes: 3, seconds: 57), elev: -7),
            Split(km: 2, pace: Duration(minutes: 4, seconds: 38), elev: -13),
            Split(km: 3, pace: Duration(minutes: 4, seconds: 58), elev: -2),
            Split(km: 4, pace: Duration(minutes: 5, seconds: 6), elev: 3),
            Split(km: 5, pace: Duration(minutes: 4, seconds: 53), elev: -3),
            Split(km: 6, pace: Duration(minutes: 5, seconds: 10), elev: 1),
            Split(km: 7, pace: Duration(minutes: 4, seconds: 54), elev: 1),
            Split(km: 8, pace: Duration(minutes: 5, seconds: 03), elev: -2),
            Split(km: 9, pace: Duration(minutes: 5, seconds: 13), elev: 4),
            Split(km: 10, pace: Duration(minutes: 5, seconds: 01), elev: 15),
            Split(km: 11, pace: Duration(minutes: 5, seconds: 03), elev: 5),
          ]);
    } else {
      activity = Activity(
          dateTime: 'November 6, 2019 at 11:35 PM',
          distance: '10.00 km',
          pace: '5:00 /km',
          time: '54m 59s',
          description: 'An awesome Night Run @ Symposium',
          splits: [
            Split(km: 1, pace: Duration(minutes: 4, seconds: 57), elev: -7),
            Split(km: 2, pace: Duration(minutes: 4, seconds: 38), elev: -13),
            Split(km: 3, pace: Duration(minutes: 4, seconds: 58), elev: -2),
            Split(km: 4, pace: Duration(minutes: 5, seconds: 6), elev: 3),
            Split(km: 5, pace: Duration(minutes: 4, seconds: 53), elev: -3),
            Split(km: 6, pace: Duration(minutes: 5, seconds: 10), elev: 1),
            Split(km: 7, pace: Duration(minutes: 4, seconds: 54), elev: 1),
            Split(km: 8, pace: Duration(minutes: 5, seconds: 03), elev: -2),
            Split(km: 9, pace: Duration(minutes: 5, seconds: 13), elev: 4),
            Split(km: 10, pace: Duration(minutes: 5, seconds: 01), elev: 15),
            Split(km: 11, pace: Duration(minutes: 5, seconds: 03), elev: 5),
          ]);
    }
    _activities.insert(0, activity);

    notifyListeners();
  }
}
