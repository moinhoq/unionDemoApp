// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:union/common/commonWidgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Loginpage.dart';
import 'anotherWay.dart';

class Forgerpassword extends StatefulWidget {
  const Forgerpassword({super.key});

  @override
  State<Forgerpassword> createState() => _ForgerpasswordState();
}

class _ForgerpasswordState extends State<Forgerpassword> {
  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController cisController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
    resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // debugShowCheckedModeBanner: false,
        title: Text(
          "Union Bank PLC",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 15,
        elevation: 200,
        backgroundColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        actions: [
          IconButton(
              tooltip: 'Logout',
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
              },
              icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: Container(
        // color: Colors.lightGreenAccent,
        child: Padding(
          padding:  EdgeInsets.fromLTRB(10.0, height*0.32, 10, 0),
          child: Column(
            children: [
              CommonWidget.buildTextFormField(controller: cisController, labelText: "CIS ID",prefixIcon: Icons.perm_identity_outlined),
              SizedBox(height: 10),
              CommonWidget.buildTextFormField(controller: phoneController, labelText: "Phone",prefixIcon: Icons.phone),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 10, right: 10),
                child: ElevatedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Message"),
                        content: const Text(
                            "An OTP have been send to your number"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: const Text("okay"),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: ElevatedButton(
                  child: Text(
                    "Try With Email",
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => anotherWay()));
                  },
                ),
              ),

            ],
              ),
        ),
      ),

      );

  }
}
