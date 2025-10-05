import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/signUp-3/signup-3Desktop.dart';
import 'package:fyp_tutor/Views/Screens/signUp-3/signup-3Tablet.dart';
import 'package:fyp_tutor/Views/Screens/signUp-3/signup-3mobile.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1200) {
      return Signup3Desktop();
    } else if (width > 500) {
      return Signup3Tablet();
    } else {
      return Signup3Mobile();
    }
  }
}
