import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthServise{
  final FirebaseAuth _auth= FirebaseAuth.instance;
Future<User?> login(String email,String password) async {
  try{
    UserCredential userCredential=await _auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }on FirebaseAuthException
  catch (e){
    SnackBar(content: Text(e.toString()));
  };
  return null;
}
}