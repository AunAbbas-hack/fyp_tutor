import 'package:flutter/material.dart';
import 'package:fyp_tutor/Screens/sign-up1/signUp-steps.dart';
import 'package:fyp_tutor/Screens/signUp-2/signup-2.dart';
import 'package:fyp_tutor/uiHelper/color_pallete.dart';
import 'package:fyp_tutor/uiHelper/customs.dart';
import 'package:fyp_tutor/uiHelper/mainButton.dart';

class SignupMobile extends StatefulWidget {
  SignupMobile({super.key});

  @override
  State<SignupMobile> createState() => _SignupMobileState();
}

class _SignupMobileState extends State<SignupMobile> {
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController mailController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
    mailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Custom.customText(
          text: "Back",
          FontSize: 20,
          color: Colors.black,
          FontWeight: FontWeight.normal,
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SignUpSteps(currentStep: 1),

            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Custom.customText(
                text: "Email",
                FontSize: 10,
                color: Colors.black,
                FontWeight: FontWeight.bold,
              ),
            ),
            Custom.customTextField(
              HintText: "Enter Email",
              PreFixIcon: Icon(Icons.person, color: Colors.black),
              Controller: mailController,
            ),
            SizedBox(height: 10),

            Align(
              alignment: Alignment.topLeft,
              child: Custom.customText(
                text: "Password",
                FontSize: 10,
                color: Colors.black,
                FontWeight: FontWeight.bold,
              ),
            ),
            Custom.customTextField(
              HintText: "Enter Password",
              PreFixIcon: Icon(Icons.person, color: Colors.black),
              Controller: passwordController,
            ),
            SizedBox(height: 30),
            RoundButton(
              title: "S I G N  U P",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup2()),
                );
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
