import 'package:flutter/cupertino.dart';

import 'login_desktop.dart';
import 'login_mobile.dart';
import 'login_tablet.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1200) {
      return LoginScreenDesktop();
    } else if (width > 500) {
      return LoginScreenTablet();
    } else {
      return LoginScreenMobile();
    }
  }
}
