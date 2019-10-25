import 'package:fitness_tracker_flutter/models/user.dart';
import 'package:flutter/material.dart';

class MockData{
  static const usernameMorning ="'@MorningStar'";  
  static const usernameNight ="@NightRider";
  static const userOvais = const User(
    displayName: 'Ovias Aktar',
    username: usernameMorning,
    photoUrl: 'https://media.licdn.com/dms/image/C5603AQFZP_ktnzs3lA/profile-displayphoto-shrink_200_200/0?e=1574899200&v=beta&t=XR9VPtLWrwyilP_SALa42aTMdWNtgbXweP-nzDXcWsI'
  );
  static const userSumith = const User(
    displayName: 'Sumith Damodaran',
    username: usernameNight,
    photoUrl: 'https://en.gravatar.com/userimage/147551125/df757af1cf5b5b8844afbbedb56d990d.jpg?size=200'
  );
  
static get defaultTheme => ThemeData(
      primaryColor: Colors.blue,
    brightness: Brightness.light,
);
 static get redTheme => ThemeData(
  primarySwatch: Colors.red,
  primaryColor: Colors.redAccent,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFF212121),
   accentColor: Colors.redAccent,
  accentIconTheme: IconThemeData(color: Colors.red),
  dividerColor: Colors.redAccent,
);

static get greenTheme => ThemeData(
  primarySwatch: Colors.green,
  primaryColor: Colors.greenAccent,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.greenAccent,
  accentIconTheme: IconThemeData(color: Colors.green),
  dividerColor: Colors.greenAccent,
);
}