import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/Dashboard/dashboard_mobile.dart';
import 'package:fyp_tutor/Views/Screens/Dashboard/dashboard_tablet.dart';

import 'dashboard_desktop.dart';


class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    if(width<450){
      return DesktopMobile();
    }
    else if(width<1200){
      return DashboardTablet();
    }
    else
      return DesktopDashboard();

  }
}
