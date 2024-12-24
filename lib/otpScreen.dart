import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:union/screen/HomePage.dart';
import 'package:union/screen/Loginpage.dart';

import 'controller/signUp_controller.dart';

class Otpscreen extends StatefulWidget {
  String  varificationid;
   Otpscreen({super.key, required this.varificationid});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: otpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter OTP",
                suffixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),

                )
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(onPressed: ()async {
              try{
                PhoneAuthCredential credential =
                await PhoneAuthProvider.credential(
                    verificationId: widget.varificationid,
                    smsCode: otpController.text.toString());

                FirebaseAuth.instance.signInWithCredential(credential).then((value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginpage()));
                },);
              }
               catch(ex){
                print(ex.toString());
               }
            },
                child: Text("OTP"))
          )
        ],
      ),
    );
  }
}
