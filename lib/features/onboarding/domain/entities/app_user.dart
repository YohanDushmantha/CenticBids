import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class AppUser extends Equatable{
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String uid;
  final bool isLoggedIn;

  AppUser({this.id, this.firstName, this.lastName, this.email, this.uid, this.isLoggedIn});

  @override
  List<Object> get props => [id, firstName,lastName,email,uid,isLoggedIn];

  factory AppUser.fromJson(Map<String, dynamic> json, String id) {
    return AppUser(
      id: id,
      firstName: json["firstName"],
      lastName: json["lastName"],
      email: json["email"],
      uid: json["uid"],
      isLoggedIn: json["isLoggedIn"] ?? false,
    );
  }
//

  // static AppUser fromDocumentSnapshot(DocumentSnapshot snapshot) {
  //   if (snapshot != null) {
  //     return AppUser(
  //         firstName: snapshot?.get('firstName'),
  //         lastName: snapshot.get('lastName'),
  //         email: snapshot.get('email'),
  //         uid: snapshot.get('uid'));
  //   }
  //   return null;
  // }


}