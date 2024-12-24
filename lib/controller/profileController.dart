import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:union/models/customerModel.dart';

class profileController {

  final _firestore = FirebaseFirestore.instance;

  Future<void> uploadCustomer(Customermodel Customer) async {
    final document = _firestore.collection('Customer').doc();
    Customer.id = document.id;
    document.set(Customer.toMap()).then((value) {
        debugPrint("Data Successfully Uploaded");
      },
    ).onError((error, stackTrace) {
        debugPrint("Data Uploaded Failed: $error");
      },
    );
  }
Future<Customermodel>fetchSingleCustomer(String email)async{
    final snapshot = await _firestore.collection('Customer').where("Email", isEqualTo: email).get();
    final userData= snapshot.docs.map((e)=> Customermodel.fromSnapshot(e)).single;
    return userData;
}

  Future<List<Customermodel>> fetchCustomer() async {
    final customers = await _firestore.collection('Customer').get();
    List<Customermodel> allCustomer = customers.docs.map((customer) => Customermodel.toModel(customer.data())).toList();
    return allCustomer;
  }

  Future<void> upDateCustomer(String id, Map<String, dynamic> data) async {
    await _firestore.collection('Customer').doc(id).update(data).then(
      (value) {
        debugPrint("Data Successfully Uploaded");
      },
    ).onError(
      (error, stackTrace) {
        debugPrint("Data update Failed: $error");
      },
    );
  }

  Future<void> deleteCustomer(String id) async {
    await _firestore.collection("Customer").doc(id).delete().then((value) {
      debugPrint("Data Successfully Deleted");
    }).onError((error, stackTrace) {
      debugPrint("Data Failed to delete: $error");
    });
  }
}
