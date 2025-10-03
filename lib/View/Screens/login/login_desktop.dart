import 'package:flutter/material.dart';
import 'package:fyp_tutor/uiHelper/mainButton.dart';

class LoginScreenDesktop extends StatelessWidget {
  const LoginScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 600,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0),
              bottom: BorderSide(width: 1.0),
              left: BorderSide(width: 1.0),
              right: BorderSide(width: 1.0),
            ),
            borderRadius: BorderRadius.circular(0),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
