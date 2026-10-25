import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_face_book/login/login_screen.dart';
import 'package:new_face_book/style/app_color.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteAppColor,
      body: SafeArea(
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/app_rounded_logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),

            Text(
              'From',
              style: TextStyle(
                color: AppColor.grayAppColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),

            Image.asset('assets/images/meta_logo.png', width: 98, height: 59),
          ],
        ),
      ),
    );
  }
}
