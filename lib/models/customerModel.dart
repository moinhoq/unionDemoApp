import 'package:cloud_firestore/cloud_firestore.dart';

class Customermodel {
  String id;
  String name;
  String fName;
  String mName;
  int phone;
  int nid;
  String email;
  // double balance;

  Customermodel({
    required this.id,
    required this.name,
    required this.fName,
    required this.mName,
    required this.phone,
    required this.nid,
    required this.email,
    // required this.balance,
});

  Map<String, dynamic>toMap(){
    return{
      'Id' : id,
      'Name' : name,
      'fName' : fName,
      'mName' : mName,
      'Phone': phone,
      'nid': nid,
      'Email': email,
      // 'Balance': balance,

    };
  }
  factory Customermodel.toModel(Map <String, dynamic> map){
    return Customermodel(
        id: map['Id'],
        name: map['Name'],
        fName: map['fName'],
        mName: map['mName'],
        phone: map['Phone'],
        nid: map['nid'],
        email: map['Email'],
        // balance: map['Balance']

    );
  }


  factory Customermodel.fromSnapshot(DocumentSnapshot<Map <String, dynamic>> document){

    final data = document.data()!;
    return Customermodel(
        id: document.id,
        name: data['Name'],
        fName: data['fName'],
        mName: data['mName'],
        phone: data['phone'],
        nid: data['nid'],
        email: data['Email']
    );
  }



}