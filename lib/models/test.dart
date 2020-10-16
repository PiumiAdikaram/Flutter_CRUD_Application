import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  String adminName;
  String adminPhone;

  DocumentReference documentReference;
  
  Book({this.adminName,this.adminPhone});

  Book.fromMap(Map<String,dynamic>map, {this.documentReference}){

    adminName =map["adminName"];
    adminPhone =map["adminPhone"];

  }

  Book.fromSnapshot(DocumentSnapshot snapshot)
  :this.fromMap(snapshot.data, documentReference:snapshot.reference);

  toJson(){
    return{'adminName': adminName, 'adminPhone': adminPhone};
  }
}