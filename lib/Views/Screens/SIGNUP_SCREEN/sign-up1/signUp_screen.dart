
import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/sign-up1/signUp_desktop.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/sign-up1/signUp_mobile.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/sign-up1/signUp_tablet.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1100) {
      return SignupDesktop();
    } else if (width > 500) {
      return SignupTablet();
    } else {
      return SignupMobile();
    }
  }
}
