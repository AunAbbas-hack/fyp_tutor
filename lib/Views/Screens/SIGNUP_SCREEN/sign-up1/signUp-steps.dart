import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../uiHelper/color_pallete.dart';
import '../../../uiHelper/customs.dart';

class SignUpSteps extends StatelessWidget {
  const SignUpSteps({super.key, required this.currentStep});
final int currentStep;

  Widget buildStep(int step,int currentStep){
    bool isCompleted= step <= currentStep;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: isCompleted? AppColor.Primary1: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(9))
        ),
        child: Center(
          child: Custom.customText(text: "$step", FontSize: 15, color: Colors.white, FontWeight: FontWeight.normal),
        ),

      ),
    );

}
 Widget buildLine(int step,int currentStep){
    return Container(
      height: 2,
      color: step<currentStep? AppColor.Primary1:Colors.grey,
      child: Align(
        alignment: Alignment.centerRight,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: step<currentStep? AppColor.Primary1:Colors.grey,
        ),
      ),

    );
 }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Custom.customText(text: "Sign Up", FontSize: 30, color: Colors.black, FontWeight: FontWeight.bold),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildStep(1, currentStep),
            buildLine(1, currentStep),
            buildStep(2, currentStep),
            buildLine(2, currentStep),
            buildStep(3, currentStep),
          ],
        )
      ],
    );
  }
}
