import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/roleSelectionPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Roleselectionpage()),
      );
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset("assets/images/splash.png"),
        ),
      ),
    );
  }
}
