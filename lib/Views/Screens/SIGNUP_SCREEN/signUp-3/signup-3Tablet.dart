import 'package:flutter/material.dart';
import '../../../uiHelper/customs.dart';
import '../sign-up1/signUp-steps.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';


class Signup3Tablet extends StatefulWidget {
  const Signup3Tablet({super.key});

  @override
  State<Signup3Tablet> createState() => _Signup3TabletState();
}

class _Signup3TabletState extends State<Signup3Tablet> {
  String? selectedEducaton;
  String? selectedSubject;
  List<String> selectedSubjects=[];
  List<String> educationLevels = ["Intermediate", "Bachelor", "Masters"];
  List<String> subjectsList = ["Maths", "Science", "English"];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Custom.customText(
          text: "Back",
          FontSize: 20,
          color: Colors.black,
          FontWeight: FontWeight.bold,
      ),),
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
                  FontSize: 15,
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
                      FontSize: 15,
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
                          FontSize: 15,
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
              Align(
                alignment: Alignment.topLeft,
                child: Custom.customText(
                  text: "Select Subject",
                  FontSize: 15,
                  color: Colors.black,
                  FontWeight: FontWeight.bold,
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
                      FontSize: 15,
                      color: Colors.black,
                      FontWeight: FontWeight.normal,),
                    items: subjectsList
                        .map(
                          (value) => DropdownMenuItem(
                        value: value,
                        child: Custom.customText(
                          text: value,
                          FontSize: 15,
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
              SizedBox(height: 10),
              Align(
              alignment: Alignment.topLeft,
                child: Custom.customText(text: "Subjects of Interest", FontSize: 15, color: Colors.black, FontWeight: FontWeight.bold),
              ),
              Container(
                width: width*80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: MultiSelectDialogField(

                   buttonText: Text("Select Subjects of Interest"),
                    title: Custom.customText(text: "Select Subjects of Interest", FontSize: 15, color: Colors.black, FontWeight: FontWeight.bold),
                    items: subjectsList.map((value)
                => MultiSelectItem(value, value)).toList(), onConfirm: (value){
                  setState(() {
                    selectedSubjects=value;
                  });
                }),
              )

            ],
          ),
        ),
      ),
    );
  }
  }

