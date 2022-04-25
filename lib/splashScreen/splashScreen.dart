import 'package:bmi/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              'مراقب سلامتیت باش',
              style: TextStyle(
                  color: CustomColors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Image.asset(
              'assets/images/logo.png',
              height: width / 2,
            ),
            Text(
              'ویرایش ۱.۲',
              style: TextStyle(
                  color: CustomColors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
