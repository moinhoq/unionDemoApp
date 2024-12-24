import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:union/models/customerModel.dart';
import '../common/commonWidgets.dart';
import '../controller/profileController.dart';

class demoProfile extends StatefulWidget {
  const demoProfile({super.key});

  @override
  State<demoProfile> createState() => _demoProfileState();
}

  class _demoProfileState extends State<demoProfile> {
  final  TextEditingController nameController = TextEditingController();
  final TextEditingController  phoneController = TextEditingController();
  final TextEditingController  nidController = TextEditingController();
  // String data = '';
  @override
  Widget build(BuildContext context) {
    profileController controller = profileController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                labelText: "Name",
                contentPadding: EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 0.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0))),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: phoneController,
            decoration: InputDecoration(
                labelText: "Phone",
                contentPadding: EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 0.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0))),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: nidController,
            decoration: InputDecoration(
                labelText: "NID",
                contentPadding: EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 0.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0))),
          ),
          SizedBox(
            height: 10,
          ),
          // ElevatedButton(onPressed: () {
          //   controller.uploadCustomer(Customermodel(
          //     id: '',
          //     name: nameController.text.toString(),
          //     phone: int.parse(phoneController.text.toString()),
          //     nid: int.parse(nidController.text.toString()),
          //   ));
          // }, child: const Text("Submit")),
        ],
      )
    );
  }
}
