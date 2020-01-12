import 'package:firebase/firebase.dart' as fb;
import 'package:cloud_firestore/cloud_firestore.dart';



class User {
final databaseReference = Firestore.instance;

  String firstName = '';
  String lastName = '';
  String mobileNum = '';
  String emailId = '';
  String message = '';

void createRecord() async {
  await databaseReference.collection("books")
      .document("1")
      .setData({
        'title': 'Mastering Flutter',
        'description': 'Programming Guide for Dart'
      });

  DocumentReference ref = await databaseReference.collection("books")
      .add({
        'title': 'Flutter in Action',
        'description': 'Complete Programming Guide to learn Flutter'
      });
  print(ref.documentID);
}



  save() {
    createRecord();
  }
}