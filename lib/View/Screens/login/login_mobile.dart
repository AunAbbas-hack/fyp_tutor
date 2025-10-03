import 'package:flutter/material.dart';
import 'package:fyp_tutor/uiHelper/mainButton.dart';
import '../../../uiHelper/color_pallete.dart';
import '../../../uiHelper/customs.dart';


import '../sign-up1/signUp_screen.dart';

class LoginScreenMobile extends StatefulWidget {
  LoginScreenMobile({super.key});

  @override
  State<LoginScreenMobile> createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends State<LoginScreenMobile> {
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController mailController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
    mailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: Image.asset("assets/images/splashIconLight.png"),
                  ),
                  Custom.customText(
                    text: "Login",
                    FontSize: 20,
                    color: Colors.black,
                    FontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Email",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Custom.customTextField(

                      HintText: "Enter Email",
                      PreFixIcon: Icon(Icons.person, color: Colors.black),
                      Controller: mailController
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Custom.customText(
                      text: "Password",
                      FontSize: 10,
                      color: Colors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Custom.customTextField(
                      HintText: "Enter Password",
                      PreFixIcon: Icon(Icons.person, color: Colors.black),
                    Controller: passwordController
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 10, color: Color(0xff2258CF)),
                    ),
                  ),
                  SizedBox(height: 20),
                  RoundButton(
                    title: "L O G I N",
                    onTap: () {},
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      const Expanded(child: Divider(thickness: 1)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text("or", style: TextStyle(fontSize: 14)),
                      ),
                      const Expanded(child: Divider(thickness: 1)),
                    ],
                  ),

                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Custom.customText(text: "Don't have an Account ?", FontSize: 10, color: Colors.black, FontWeight: FontWeight.normal),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        }, child: Custom.customText(text: "Sign Up", FontSize: 10, color: AppColor.Primary1, FontWeight: FontWeight.bold))
                      ],
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
