import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../common/commonWidgets.dart';
import '../models/customerModel.dart';
import '../otpScreen.dart';
import 'Loginpage.dart';
import '../controller/signUp_controller.dart';

class newUserInfo extends StatefulWidget {
  const newUserInfo({super.key});

  @override
  _newUserInfoState createState() => _newUserInfoState();
}

class _newUserInfoState extends State<newUserInfo> {
  final nameController = TextEditingController();
  final fNameController = TextEditingController();
  final mNameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final pNumberController = TextEditingController();
  final nidController = TextEditingController();
  TextEditingController _birthDateController = TextEditingController();

  get obscured => true;

  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;
    final bottomPadding = isKeyboardVisible ? 16.0 : 0.0;
    // final keyboardVisible = _mediaQuery.viewInsets.bottom > 0;
    var height = _mediaQuery.size.height;
    var width = _mediaQuery.size.width;
    var containerheight = height * 0.90;
    var containerwidth = width * 0.97;
    var addresscontainerheight = containerheight * 0.42;
    var addresscontainerwidth = containerwidth * 0.99;
    bool _obscured;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(),
        toolbarHeight: MediaQuery.of(context).size.height / 20,
        title: Text(
          "Union Bank PLC.",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        titleSpacing: 0,
        centerTitle: true,
        // toolbarHeight: _mediaQuery.size.height*0.1,
        toolbarOpacity: 1,
        backgroundColor: Colors.deepPurple.shade100,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
              },
              icon: Icon(Icons.logout_outlined))
          //
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: containerheight,
              width: containerwidth,
              child: Column(
                children: [
                  Card(
                      shadowColor: Colors.black,
                      child: Text("Personal Information",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: containerheight * 0.03))),
                  TextFormField(controller: nameController,
                    decoration: InputDecoration(
                        labelText: "Name",
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(controller: fNameController,
                    decoration: InputDecoration(
                        labelText: "Father Name",
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(controller: mNameController,
                    decoration: InputDecoration(
                        labelText: "Mother Name",
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(controller: pNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(controller: nidController,
                    decoration: InputDecoration(
                        labelText: "NID",
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(controller: emailController,
                    decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(controller: passController,
                    decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock_outline),
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))), // Label for the name field
                  ),
                  // SizedBox(height: addresscontainerheight * 0.0175),
                  // SizedBox(height: addresscontainerheight * 0.0175),

                  //   controller: TextEditingController(),
                  //   decoration: InputDecoration(
                  //     labelText: "Name",
                  //     contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
                  //   ),
                  // ),

                  // CommonWidget.buildTextFormField(controller: TextEditingController(), labelText: "Name"),
                  // SizedBox(height: addresscontainerheight * 0.0175),
                  // CommonWidget.buildTextFormField(controller: TextEditingController(), labelText: "Father's Name"),
                  // SizedBox(height: addresscontainerheight * 0.0175),
                  // CommonWidget.buildTextFormField(controller: TextEditingController(), labelText: "Mother's Name"),
                  // SizedBox(height: addresscontainerheight * 0.0175),
                  // CommonWidget.buildTextFormField(controller: TextEditingController(), labelText: "Phone Number"),
                  // SizedBox(height: addresscontainerheight * 0.0175),
                  // CommonWidget.buildTextFormField(controller: TextEditingController(), labelText: "NID"),
                  // SizedBox(height: addresscontainerheight * 0.0175),
                  SizedBox(height: addresscontainerheight * 0.0175),
                  TextFormField(
                    controller: _birthDateController,
                    decoration: InputDecoration(
                        labelText: "Date of Birth",
                        prefixIcon: Icon(Icons.date_range_outlined),
                        contentPadding: EdgeInsets.fromLTRB(
                            4.0, 4.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                3.0))),
                    readOnly: true,
                    onTap: () {
                      _selectDate();
                    },
                  ),

                  SizedBox(height: addresscontainerheight * 0.0175),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.blueGrey.shade100),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    // color:Colors.deepPurpleAccent,
                    height: addresscontainerheight,
                    width: addresscontainerwidth,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment(-0.97, 0),
                            child: Text("Address",
                                style: TextStyle(
                                    fontSize: containerheight * 0.017))),
                        Container(
                          // color: Colors.green.shade100,
                          height: addresscontainerheight * 0.45,
                          width: addresscontainerwidth * 0.99,
                          child: Column(
                            children: [
                              Text(
                                "Present Address",
                                style: TextStyle(
                                    fontSize: containerheight * 0.017),
                              ),
                              Container(
                                height: addresscontainerheight * (0.45 / 3.5),
                                width: addresscontainerwidth * 0.97,
                                alignment: Alignment(-0.97, 0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Road No/Village:",
                                      contentPadding: EdgeInsets.fromLTRB(
                                          4.0, 4.0, 0.0, 0.0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              3.0))), // Label for the name field
                                ),
                              ),
                              Container(
                                // color: Colors.cyanAccent.shade100,
                                height: addresscontainerheight * (0.45 / 3.5),
                                width: addresscontainerwidth * 0.97,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.pink.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Ward No.",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.lightGreenAccent.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Post Code",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // color: Colors.green.shade400,
                                height: addresscontainerheight * (0.45 / 3.5),
                                width: addresscontainerwidth * 0.97,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.pink.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Upozila",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.lightGreenAccent.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "District",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.green.shade100,
                          height: addresscontainerheight * 0.45,
                          width: addresscontainerwidth * 0.99,
                          child: Column(
                            children: [
                              Text(
                                "Permanant Address",
                                style: TextStyle(
                                    fontSize: containerheight * 0.017),
                              ),
                              Container(
                                height: addresscontainerheight * (0.45 / 3.5),
                                width: addresscontainerwidth * 0.97,
                                alignment: Alignment(-0.97, 0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Road No/Village:",
                                      contentPadding: EdgeInsets.fromLTRB(
                                          4.0, 4.0, 0.0, 0.0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              3.0))), // Label for the name field
                                ),
                              ),
                              Container(
                                // color: Colors.cyanAccent.shade100,
                                height: addresscontainerheight * (0.45 / 3.5),
                                width: addresscontainerwidth * 0.97,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.pink.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Ward No.",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.lightGreenAccent.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Post Code",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // color: Colors.green.shade400,
                                height: addresscontainerheight * (0.45 / 3.5),
                                width: addresscontainerwidth * 0.97,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.pink.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Upozila",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.lightGreenAccent.shade100,
                                      height:
                                          addresscontainerheight * (0.45 / 3.5),
                                      width:
                                          addresscontainerwidth * (0.97 / 2.1),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "District",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 0.0),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    3.0))), // Label for the name field
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 10, right: 10),
                    child: ElevatedButton(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        onPressed: () async {
                          SignUpController signcontroller = SignUpController();
                          await signcontroller.signUpUser(emailController.text, passController.text, context);
                          await signcontroller.uploadCustomer(Customermodel(
                            id: '',
                            name: nameController.text.toString(),
                            fName: fNameController.text.toString(),
                            mName: mNameController.text.toString(),
                            email: emailController.text.toString(),
                            // balance: double.parse("source").toDouble(),
                            phone: int.parse(pNumberController.text.toString()),
                            nid: int.parse(nidController.text.toString()),
                          ));
                        }),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1975),
        lastDate: DateTime(2030));
    if (_picked != null) {
      setState(() {
        _birthDateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
