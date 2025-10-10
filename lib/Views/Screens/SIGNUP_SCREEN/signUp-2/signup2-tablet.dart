import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/uiHelper/color_pallete.dart';
import 'package:fyp_tutor/Views/uiHelper/validators.dart';
import '../../../uiHelper/customs.dart';
import '../../../uiHelper/mainButton.dart';
import '../sign-up1/signUp-steps.dart';
import '../signUp-3/signup-3Tablet.dart';

class Signup2Tablet extends StatefulWidget {
  Signup2Tablet({super.key});

  @override
  State<Signup2Tablet> createState() => _Signup2TabletState();

}

class _Signup2TabletState extends State<Signup2Tablet> {
  final TextEditingController longitudeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _isFormValid=ValueNotifier<bool>(false);
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
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: SafeArea(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,   // Enable auto-validation
              onChanged: (){
                  _isFormValid.value=_formKey.currentState?.validate()??false     ;
              },
              key: _formKey,
              child: Column(
                children: [
                  SignUpSteps(currentStep: 2),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Longitude",
                      FontSize: 15,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter Longitude",
                    PreFixIcon: Icon(Icons.location_on_outlined),
                    Controller: longitudeController,
                    Validator: Validator.longitudeValidator,
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Latitude",
                      FontSize: 15,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter Latitude",
                    PreFixIcon: Icon(Icons.location_on_outlined),
                    Controller: latitudeController,
                    Validator: Validator.latitudeValidator,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Select Location",
                      FontSize: 15,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
              
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    width: width * 80,
                    child: Image.asset(
                      "assets/images/splashIconLight.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 20),
                  ValueListenableBuilder<bool>(
                    valueListenable: _isFormValid,
                    builder: (context, isValid, child) {
                      return RoundButton(
                        title: "S I G N U P",
                        onTap: isValid ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup3Tablet()),
                          );
                        } : null,
                        color: isValid?Colors.white:Colors.grey,

                        fontWeight: FontWeight.bold,
                      );
                    },
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
