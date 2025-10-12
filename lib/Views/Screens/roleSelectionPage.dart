import 'package:flutter/material.dart';
import 'package:fyp_tutor/View-Model/role_provider.dart';
import 'package:fyp_tutor/Views/uiHelper/color_pallete.dart';
import 'package:fyp_tutor/Views/uiHelper/customs.dart';
import 'package:fyp_tutor/Views/uiHelper/role_card.dart';
import 'package:provider/provider.dart';

import 'SIGNUP_SCREEN/sign-up1/signUp_screen.dart';


class Roleselectionpage extends StatelessWidget {
  Roleselectionpage({super.key});
  final roles = [
    {
      "title": "Student",
      "subtitle": "Find Tutor & hire him",
      "icons": Icons.person_pin,
      "key": "Student",
    },
    {
      "title": "Parent",
      "subtitle": "Find tutor for your child",
      "icons": Icons.family_restroom,
      "key": "Parent",
    },
    {
      "title": "Tutor",
      "subtitle": "Teach Students & manage classes",
      "icons": Icons.person_pin,
      "key": "Tutor",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Choose Your Role",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Custom.customText(
                text: "Who are you ?",
                FontSize: 40,
                color: Colors.black,
                FontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 20),
              Custom.customText(
                text: "Select the ROLE that describes YOU",
                FontSize: 20,
                color: Colors.black26,
                FontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 900),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      children: roles.map((role) {
                        return RoleCard(
                          keyName: role["key"] as String,
                          title: role["title"] as String,
                          subTitle: role["subtitle"] as String,
                          icon: role["icons"] as IconData,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: double.infinity,
                child: Consumer<RoleProvier>(
                  builder: (context, value, _) {
                    final enabled=value.selectedrole!=null;
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        backgroundColor: enabled? AppColor.Primary1:Colors.grey

                      ),
                      onPressed: () {
                        if(enabled){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        }
                      },
                      child: Custom.customText(
                        text: enabled? "Continue as ${value.selectedrole}":"Select role to continue",
                        FontSize: 10,
                        color: enabled? Colors.white:Colors.black,
                        FontWeight: FontWeight.normal,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
