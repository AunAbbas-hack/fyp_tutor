import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_tutor/Model/login-model.dart';
import 'package:fyp_tutor/View-Model/firebase_auth_servise.dart';

class LoginViewModel{
  final formKey=GlobalKey<FormState>();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  final _authService=FirebaseAuthServise();
  final LoginModel user=LoginModel();

  Future<bool> login() async{
    if(formKey.currentState!.validate()){
      user.email=emailController.text.trim();
      user.password=passwordController.text.trim();
     final result= await _authService.login(user.email!, user.password!);
      return result!=null;
    }
    return false;
  }
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

  }
}