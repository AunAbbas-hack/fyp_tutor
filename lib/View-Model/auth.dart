import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth_Service {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //SignUp User

  Future<User?> SignUp(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
      print("Sign Up Error: $e");
      return null;
    }
  }
  //Login User

  Future<User?> SignIn(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
