import 'package:bmi/personalInfo/personalInfo.dart';
import 'package:bmi/theme/colors.dart';
import 'package:flutter/material.dart';
import './splashScreen/splashScreen.dart';
import './getMobile/getMobile.dart';
import './verifyCode/verifyCode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitSho',
      theme: ThemeData(
          primarySwatch: MaterialColor(0xff00F5D4, {
            50: Color(0xff00F5D4),
            100: Color(0xff00F5D4),
            200: Color(0xff00F5D4),
            300: Color(0xff00F5D4),
            400: Color(0xff00F5D4),
            500: Color(0xff00F5D4),
            600: Color(0xff00F5D4),
            700: Color(0xff00F5D4),
            800: Color(0xff00F5D4),
            900: Color(0xff00F5D4),
          }),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: CustomColors.carbon, fontFamily: 'IRSans')),
      home: Directionality(
          textDirection: TextDirection.rtl, child: PersonalInfo()),
    );
  }
}
