import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../screen/HomePage.dart';

class LoginController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future <void> loginUser(String email, String password, BuildContext context) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("User Successfully Longed in")));
           debugPrint('User Successfully Longed in');
           Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
      },
    ).onError((error, stackTrace) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Failed to Loged in")));
        debugPrint('User Failed to Longed in');
      },
    );
  }
}
