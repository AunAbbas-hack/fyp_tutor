import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/signUp-3/signup-3Tablet.dart';

import '../../uiHelper/customs.dart';
import '../../uiHelper/mainButton.dart';
import '../sign-up1/signUp-steps.dart';

class Signup2Tablet extends StatefulWidget {
  const Signup2Tablet({super.key});

  @override
  State<Signup2Tablet> createState() => _Signup2TabletState();
}

class _Signup2TabletState extends State<Signup2Tablet> {
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
                FontSize: 15,
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup3Tablet()));
              },
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
