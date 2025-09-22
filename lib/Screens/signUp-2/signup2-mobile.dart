import 'package:flutter/material.dart';
import 'package:fyp_tutor/Screens/sign-up1/signUp-steps.dart';
import 'package:fyp_tutor/uiHelper/color_pallete.dart';
import 'package:fyp_tutor/uiHelper/customs.dart';
import 'package:fyp_tutor/uiHelper/mainButton.dart';

class Signup2Mobile extends StatelessWidget {
  const Signup2Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Custom.customText(
          text: "Back",
          FontSize: 20,
          color: Colors.black,
          FontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Column(
          children: [
            SignUpSteps(currentStep: 2),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Custom.customText(
                text: "Select Location",
                FontSize: 10,
                color: Colors.black,
                FontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              width: width * 80,
              child: Image.asset(
                "assets/images/splashIconLight.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 20),
            RoundButton(
              title: "S I G N U P",
              onTap: () {},
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
