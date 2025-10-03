import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Model/user_model.dart';

class SignUpViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  get userModel => null;

  Future<String?> signupUser({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String city,
    required String role,
    required String longitude,
    required String latitude,
    required UserState status,
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      User? user = userCredential.user;
      if (user != null) {
        UserModel userModel = UserModel(
          email: user.email!,
          name: name,
          phone: phone,
          city: city,
          role: '',
          status: status,
          longitude: '',
          latitude: '',
          uid: user.uid,
        );
      }
      ;
      await _firestore
          .collection('users')
          .doc(user!.uid)
          .set(userModel.toMap());
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    return "Something went wrong";
  }
}
