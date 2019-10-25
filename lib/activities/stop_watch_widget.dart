import 'package:fitness_tracker_flutter/MockData/mockdata.dart';
import 'package:fitness_tracker_flutter/models/activities_data.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:provider/provider.dart';

class StopWatchWidget extends StatefulWidget {
  @override
  _StopWatchWidgetState createState() => _StopWatchWidgetState();
}

class _StopWatchWidgetState extends State<StopWatchWidget> {
  Stopwatch watch = new Stopwatch();

  Timer timer;

  String elapsedTime = '';

  updateTime(Timer timer) {
    if (watch.isRunning) {
      setState(() {
        elapsedTime = transformMilliSeconds(watch.elapsedMilliseconds);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new infoText(elapsedTime: elapsedTime),
        SizedBox(height: 20.0),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FloatingActionButton(
                backgroundColor: Colors.lightGreen,
                onPressed: startWatch,
                child: new Icon(Icons.play_arrow)),
            SizedBox(width: 20.0),
            new FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: stopWatch,
                child: new Icon(Icons.stop)),
            SizedBox(width: 20.0),
            new FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: resetWatch,
                child: new Icon(Icons.refresh)),
          ],
        )
      ],
    );
  }

  startWatch() {
    watch.start();
    timer = new Timer.periodic(new Duration(milliseconds: 100), updateTime);
  }

  stopWatch() {
    watch.stop();
    setTime();
    Provider.of<ActivitiesData>(context).addActivity();
    Provider.of<ActivitiesData>(context).setTheme( );
  }

  resetWatch() {
    watch.reset();
    setTime();
  }

  setTime() {
    var timeSoFar = watch.elapsedMilliseconds;
    setState(() {
      elapsedTime = transformMilliSeconds(timeSoFar);
    });
  }

  transformMilliSeconds(int milliseconds) {
    //Thanks to Andrew
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 60).toString().padLeft(2, '0');
    return "$minutesStr:$secondsStr:$hundredsStr";
  }
}

class infoText extends StatelessWidget {
  const infoText({
    Key key,
    @required this.elapsedTime,
  }) : super(key: key);

  final String elapsedTime;

  @override
  Widget build(BuildContext context) {
    if (elapsedTime.isEmpty) {
      return new Text(elapsedTime, style: new TextStyle(fontSize: 25.0));
    }
    return new Column(
      children: <Widget>[
        Icon(Icons.directions_run),
        Text(elapsedTime, style: new TextStyle(fontSize: 25.0))
      ],
    );
  }
}
