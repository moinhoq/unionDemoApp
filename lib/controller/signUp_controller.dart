import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/customerModel.dart';
import '../otpScreen.dart';
class SignUpController {
  final  auth = FirebaseAuth.instance;
  final _firStore = FirebaseFirestore.instance;

  Future<void> signUpUser(String email, String password, BuildContext context) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User Successfully Signed Up")));
      // debugPrint('An OTP send to your Phone Number');
    },).onError((error, stackTrace) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User Failed to Signed Up")));
      debugPrint('User Failed to Signed Up');
    },);
  }

  Future<void> uploadCustomer(Customermodel Customer) async {
    final document = _firStore.collection('Customer').doc();
    Customer.id = document.id;
    document.set(Customer.toMap()).then((value) {
      debugPrint("Data Successfully Uploaded");
    },
    ).onError((error, stackTrace) {
      debugPrint("Data Uploaded Failed: $error");
    },
    );
  }
}