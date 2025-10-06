import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/sign-up1/signUp-steps.dart';
import 'package:fyp_tutor/Views/uiHelper/customs.dart';

class Signup3Mobile extends StatefulWidget {
  const Signup3Mobile({super.key});

  @override
  State<Signup3Mobile> createState() => _Signup3MobileState();
}

class _Signup3MobileState extends State<Signup3Mobile> {
  String? selectedEducaton;
  String? selectedSubject;
  List<String> educationLevels = ["Intermediate", "Bachelor", "Masters"];
  List<String> subjectsList = ["Maths", "Science", "English"];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SignUpSteps(currentStep: 3),
              Custom.customText(
                text: "Select Personal Details",
                FontSize: 20,
                color: Colors.black,
                FontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Custom.customText(
                  text: "Education Level",
                  FontSize: 10,
                  color: Colors.black,
                  FontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 50,
                width: width * 80,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: Custom.customText(
                      text: "Select Education Level",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.normal,
                    ),
                    value: selectedEducaton,
                    isExpanded: true,

                    items: educationLevels
                        .map(
                          (value) => DropdownMenuItem(
                            value: value,
                            child: Custom.customText(
                              text: value,
                              FontSize: 10,
                              color: Colors.black,
                              FontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedEducaton = newValue;
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                width: width * 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: selectedSubject,
                    isExpanded: true,
                    hint: Custom.customText(
                      text: "Select Subjects",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.normal,),
                    items: subjectsList
                        .map(
                          (value) => DropdownMenuItem(
                            value: value,
                            child: Custom.customText(
                              text: value,
                              FontSize: 10,
                              color: Colors.black,
                              FontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (newValue){
                      setState(() {
                        selectedSubject=newValue;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
