import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/Screens/DashBoardScreen.dart';
import 'package:fyp_tutor/Views/uiHelper/customs.dart';
import 'package:fyp_tutor/Views/uiHelper/mainButton.dart';
import 'package:fyp_tutor/Views/uiHelper/validators.dart';

import '../sign-up1/signUp-steps.dart';

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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final _isFormValid=ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Form(
              key: _formKey,
              onChanged: (){
                _isFormValid.value=_formKey.currentState?.validate()??false;
              },
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
                      child: DropdownButtonFormField(
                        validator: Validator.educationValidator,

                        hint: Custom.customText(
                          text: "Select Education Level",
                          FontSize: 10,
                          color: Colors.black,
                          FontWeight: FontWeight.normal,
                        ),
                        initialValue: selectedEducaton,
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
                      child: DropdownButtonFormField(
                        validator: Validator.subjectValidator,
                            initialValue: selectedSubject,
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
                  SizedBox(height: 20),
                  ValueListenableBuilder<bool>(
                      valueListenable: _isFormValid,
                      builder: (context,isValid,index){
                  return RoundButton(title: "S I G N  U P",
                  onTap: isValid? (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboardscreen()));
                      } :null,
            color: isValid? Colors.white:Colors.grey,
            fontWeight: FontWeight.bold);
                  }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
