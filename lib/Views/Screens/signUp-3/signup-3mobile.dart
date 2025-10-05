import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/sign-up1/signUp-steps.dart';
import 'package:fyp_tutor/Views/uiHelper/customs.dart';

class Signup3Mobile extends StatelessWidget {
  const Signup3Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SignUpSteps(currentStep: 3),
            Custom.customText(text: "Personal Details" , FontSize: 20, color: Colors.black, FontWeight: FontWeight.bold),
            SizedBox(height: 20,),

            
          ],
        )
      ),
    );
  }
}
