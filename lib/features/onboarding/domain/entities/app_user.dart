import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String uid;
  final bool isLoggedIn;

  AppUser(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.uid,
      this.isLoggedIn});

  @override
  List<Object> get props => [id, firstName, lastName, email, uid, isLoggedIn];

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

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "firstName": this.firstName,
      "lastName": this.lastName,
      "email": this.email,
      "uid": this.uid,
      "isLoggedIn": this.isLoggedIn,
    };
  }
}
