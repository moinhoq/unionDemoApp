import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:union/controller/signUp_controller.dart';
import 'package:union/models/customerModel.dart';
import '../common/commonWidgets.dart';
import '../controller/profileController.dart';
import 'Loginpage.dart';
class SpecificUser extends StatelessWidget {

final currentUser = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                  // MySnackBar("Logout", context);
                },
                icon: Icon(Icons.logout_outlined))
            // IconButton(onPressed: (){MySnackBar("Search Icon", context);}, icon: Icon(Icons.search)),
            // IconButton(onPressed: (){MySnackBar("Comment", context);}, icon: Icon(Icons.comment)),
          ],
        ),
      drawer: Drawer(
        child: Column(
        children: [
        StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Customer")
                .where('Email', isEqualTo: currentUser.currentUser!.email)
                    .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot>snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i){
                      var data = snapshot.data!.docs[i];
                      return UserAccountsDrawerHeader(
                          accountName: Text(data['Name']),
                          accountEmail: Text(data['Email']));
                    });
              }else return CircularProgressIndicator();

            })
      ],

      ),
      )
    );
  }
}
