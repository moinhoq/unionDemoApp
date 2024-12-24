import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'otpScreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Phoneauth extends StatefulWidget {
  const Phoneauth({super.key});

  @override
  State<Phoneauth> createState() => _PhoneauthState();
}

class _PhoneauthState extends State<Phoneauth> {
  TextEditingController phoneController = TextEditingController();
  final _imagePicker = ImagePicker();
  String? imageurl;
  bool isLoading = false;
  Future<void> pickImage() async {
    try {
      XFile? res = await _imagePicker.pickImage(source: ImageSource.gallery);
      if (res != null) {
        await uploadImageToFirebase(File(res.path));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          backgroundColor: Colors.blueGrey,
          content: Text("Failed to pick Image: $e"),
        ),
      );
    }
  }
  Future<void> uploadImageToFirebase(File image)async{
    setState(() {
      isLoading = true;
    });
    try{
Reference reference = FirebaseStorage.instance.ref().child("images/${DateTime.now().microsecondsSinceEpoch}.png");
await reference.putFile(image).whenComplete((){
  ScaffoldMessenger.of(context).showSnackBar(
   const  SnackBar(
      backgroundColor: Colors.green,
      duration: Duration(seconds: 2),
      content: Text("Upload Successfully"),
    ),
  );

});

imageurl = await reference.getDownloadURL();
    }catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          backgroundColor: Colors.blueGrey,
          content: Text("Failed to upload Image: $e"),
        ),
      );
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Authentication"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blueGrey.shade200,
                child: imageurl==null?
               const Icon (
                  Icons.person,
                  size: 70,
                  color: Colors.blueGrey,
                ): SizedBox(
                  height: 200,
                  width: 200,
                  child: ClipOval(
                      child: Image.network(imageurl!, fit: BoxFit.cover,)),
                ),
              ),

              if(isLoading)
               const Positioned(
                   top: 105,
                   left: 94,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )),

              Positioned(
                  top: 110,
                  left: 100,
                  child: GestureDetector(
                    onTap: () {
                      pickImage();
                    },
                    child:
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black87,
                    )
                  ))
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException ex) {},
                    codeSent: (
                      String verificationid,
                      int? recentToken,
                    ) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Otpscreen(
                                    varificationid: verificationid,
                                  )));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                    phoneNumber: phoneController.text.toString());
              },
              child: Text("Verify Phone Number")),
        ],
      ),
    );
  }
}
