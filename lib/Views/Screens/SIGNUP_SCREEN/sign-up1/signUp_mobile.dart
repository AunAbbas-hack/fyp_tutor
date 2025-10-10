import 'package:flutter/material.dart';
import 'package:fyp_tutor/View-Model/signUp_viewModel.dart';
import 'package:fyp_tutor/Views/Screens/SIGNUP_SCREEN/sign-up1/signUp-steps.dart';
import '../../../uiHelper/customs.dart';
import '../../../uiHelper/mainButton.dart';
import '../../../uiHelper/validators.dart';
import '../signUp-2/signup-2.dart';

class SignupMobile extends StatefulWidget {
  SignupMobile({super.key});

  @override
  State<SignupMobile> createState() => _SignupMobileState();
}

class _SignupMobileState extends State<SignupMobile> {
  final viewModel = SignUpViewModel();
  final List<String> role = [];
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
    mailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Custom.customText(
          text: "Back",
          FontSize: 20,
          color: Colors.black,
          FontWeight: FontWeight.normal,
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  SignUpSteps(currentStep: 1),
        
                  SizedBox(height: 20),
        
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "First Name",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter First Name",
                    PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: firstNameController,
                    Validator: Validator.firstNameValidator,
                  ),
        
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Last Name",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter Last Name",
                    PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: lastNameController,
                    Validator: Validator.lastNameValdator,
                  ),
        
                  SizedBox(height: 10),
        
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Email",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter Email",
                    PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: mailController,
                    Validator: Validator.emailValidator,
                  ),
        
                  SizedBox(height: 10),
        
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Password",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter Password",
                    PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: passwordController,
                    Validator: Validator.passwordlValidator,
                  ),
                  SizedBox(height: 10),
        
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Password",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Confirm Password",
                    PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: passwordController,
                    Validator: (val) => Validator.confirmPasswordValidator(
                      val,
                      passwordController,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Phone Number",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom.customTextField(
                    HintText: "Enter Phone Number",
                    PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: phoneController,
                    Validator: Validator.phoneValidator,
                  ),
        
                  SizedBox(height: 30),
                  RoundButton(
                    title: "S I G N  U P",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup2()),
                      );
                    },
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
