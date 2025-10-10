import 'package:flutter/material.dart';
import '../../../../View-Model/signUp_viewModel.dart';
import '../../../uiHelper/customs.dart';
import '../../../uiHelper/mainButton.dart';
import '../../../uiHelper/validators.dart';
import '../sign-up1/signUp-steps.dart';
import '../signUp-3/signup-3mobile.dart';


class Signup2Mobile extends StatefulWidget {
  const Signup2Mobile({super.key});

  @override
  State<Signup2Mobile> createState() => _Signup2MobileState();
}

class _Signup2MobileState extends State<Signup2Mobile> {
  final viewModel=SignUpViewModel();
  final GlobalKey _formKey=GlobalKey<FormState>();
  final _isFormValid=ValueNotifier<bool>(false);
  final TextEditingController longitudeController=TextEditingController();
  final TextEditingController latitudeController=TextEditingController();
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Form(
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
                      FontSize: 10,
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
                  ValueListenableBuilder(
                    valueListenable:_isFormValid,
                    builder: (context, isValid, child) {
                      return RoundButton(
                      title: "S I G N U P",
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup3Mobile()));
                      },
                      color: isValid?Colors.white:Colors.grey,
                      fontWeight: FontWeight.bold,
                      );}
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
