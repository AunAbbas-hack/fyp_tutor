import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/sign-up1/signUp_screen.dart';
import 'package:fyp_tutor/Views/uiHelper/color_pallete.dart';
import 'package:fyp_tutor/Views/uiHelper/customs.dart';
import 'package:provider/provider.dart';

import '../../View-Model/role_provider.dart';

class RoleCard extends StatelessWidget {
  final String keyName;
  final String title;
  final String subTitle;
  final IconData icon;
  const RoleCard({
    super.key,
    required this.keyName,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final selectedRole = context.watch<RoleProvier>().selectedrole;
    final bool isSelected = selectedRole == keyName;
    return GestureDetector(
      onTap: () {
        final role = context.read<RoleProvier>();
        if (isSelected) {
          role.clear();
        } else {
          role.role = keyName;
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 220),
          width: 260,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(style: BorderStyle.solid,
              color: isSelected?AppColor.Primary1:Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected ? AppColor.Primary1 : Colors.grey,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon,
                        size: 34,
                        color: isSelected ? AppColor.Primary1 : Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Custom.customText(
                    text: title,
                    FontSize: 20,
                    color: Colors.black,
                    FontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Custom.customText(
                    text: subTitle,
                    FontSize: 10,
                    color: Colors.black26,
                    FontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 10),
                  if (isSelected)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.Primary1, width: 4),
                          color: AppColor.Primary1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Custom.customText(
                          text: "Selected",
                          FontSize: 10,
                          color: Colors.white,
                          FontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
