import 'package:flutter/cupertino.dart';

class Validator {
  static String? emailValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val)) {
      return 'Invalid email format';
    }
    return null;
  }

  static String? firstNameValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  static String? lastNameValdator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Name is required';
    }
    return null;
  }

  static String? passwordlValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }
    if (val.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? phoneValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required';
    }
    if (val.length != 10) {
      return 'Invalid phone number';
    }
    return null;
  }

  static String? confirmPasswordValidator(
    String? val,
    TextEditingController passwordController,
  ) {
    if (val == null || val != passwordController.text) {
      return 'Password does not match';
    }
    ;
    return null;
  }

  static String? latitudeValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Latitude is required';
    }
    final double? latitude = double.tryParse(val);

    if (latitude == null) {
      return 'Please enter a valid number';
    }
    if (latitude < -90 || latitude > 90) {
      return 'Invalid Latitude (must be between -90 and +90)';
    }

    return null;
  }

  static String? longitudeValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Longitude is required';
    }
    final double? longitude = double.tryParse(val);

    if (longitude == null) {
      return 'Please enter a valid number';
    }

    if (longitude < -180 || longitude > 180) {
      return 'Invalid Longitude range (-180 and 180)';
    }

    return null;
  }

  static String? educationValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Education level is required';
    }
    return null;
  }

  static String? subjectValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Subject is required';
    }
    return null;
  }
}
