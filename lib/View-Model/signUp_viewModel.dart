import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fyp_tutor/Model/signUP_Model.dart';
import 'package:fyp_tutor/View-Model/role_provider.dart';
import 'package:provider/provider.dart';

class SignUpViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //signup function for user
  Future<void> signUpFunction(
    SignupModel signupModel,
    BuildContext context,
  ) async {
    final role = context.read<RoleProvier>();
    signupModel.role = role.selectedrole;
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: signupModel.email!,
            password: signupModel.password!,
          );
      await _firestore
          .collection("users")
          .doc(userCredential.user!.uid)
          .set(signupModel.toMap());
      print("User Sign In Succefully");
    } catch (e) {
      print("User Sign In Failed, Error: $e");
    }
  }
}
