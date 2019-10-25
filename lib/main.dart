 
import 'package:fitness_tracker_flutter/MockData/mockdata.dart';
import 'package:fitness_tracker_flutter/activities/activities_page.dart';
import 'package:fitness_tracker_flutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/activities_data.dart';
 final User user = MockData.userOvais;

void main() => runApp(
      new ChangeNotifierProvider(
          builder: (context) => ActivitiesData(user,MockData.defaultTheme), child: MyApp()),
    );

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final activitiesData = Provider.of<ActivitiesData>(context);

    return MaterialApp(
      title: "Let's Run - SITECORE Symposium 2019",
      theme: activitiesData.getTheme(),
      debugShowCheckedModeBanner: false,
      home: ActivitiesPage(
        user: user,
      ),
    );
  }
}
