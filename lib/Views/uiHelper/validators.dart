import 'package:flutter/cupertino.dart';

class Validator{
  static String? emailValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val)) {
      return 'Invalid email format';
    }
  }
  static String? namelValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }
  }
  static String? passwordlValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }
    if (val.length < 6) {
      return 'Password must be at least 6 characters';
    }
  }
  static String? phoneValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required';
    }
    if (val.length != 10) {
      return 'Invalid phone number';}
  }
  static String? confirmPasswordValidator(String? val, TextEditingController passwordController) {
    if (val==null||val!=passwordController.text){
      return 'Password does not match';

    };
  }
}