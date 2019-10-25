import 'package:fitness_tracker_flutter/activities/activity_card.dart';
import 'package:fitness_tracker_flutter/activities/stop_watch_widget.dart';
import 'package:fitness_tracker_flutter/models/activities_data.dart';
import 'package:fitness_tracker_flutter/models/activity.dart';
import 'package:fitness_tracker_flutter/models/user.dart';
import 'package:fitness_tracker_flutter/activities/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActivitiesPage extends StatelessWidget {
  ActivitiesPage({Key key, @required this.user}) : super(key: key);

  final User user;
  List<Activity> activities = new List<Activity>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text('Lets Run - SITECORE Symposium 2019', style: TextStyle(color: Colors.black87)),
        elevation: 2,
      ),
      body: _buildBody(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildBody(BuildContext context) {
    activities = Provider.of<ActivitiesData>(context).activities;
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: ProfileHeader(
            user: user,
          ),
        ),
        SliverToBoxAdapter(
          child: StopWatchWidget(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => ActivityCard(
              user: user,
              activity: activities[index],
            ),
            childCount: activities.length,
          ),
        ),
      ],
    );
  }
}
