// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/customerModel.dart';
import 'Loginpage.dart';
import '../controller/signUp_controller.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // debugShowCheckedModeBanner: false,
        title: Text(
          "Union Bank PLC",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height/20,
        elevation: 10,
        backgroundColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        actions: [
        ],
      ),
      body: Center(
        child: Container(
          height: 260,
          width: 300,
          // margin: const EdgeInsets.all(1.0),
          // padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: false,
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: ''),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: TextField(
                  obscureText: true,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: ''),
                ),
              ),
              Column(
                children: [
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
                      onPressed: () async{
                        SignUpController signcontroller = SignUpController();
                        await signcontroller.signUpUser(emailcontroller.text, passwordcontroller.text, context);
                      }
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: ElevatedButton(
                      child: Text(
                        "Try Another Way",
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
