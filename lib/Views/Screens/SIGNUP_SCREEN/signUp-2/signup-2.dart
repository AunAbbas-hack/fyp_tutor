import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/signUp-2/signup2-desktop.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/signUp-2/signup2-mobile.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/signUp-2/signup2-tablet.dart';

class Signup2 extends StatelessWidget {
  const Signup2({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1100) {
      return Signup2Desktop();
    } else if (width > 500) {
      return Signup2Tablet();
    } else {
      return Signup2Mobile();
    }
  }
}
