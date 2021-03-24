import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}

class RegisterUserWithUsernameAndPasswordEvent extends SignUpEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String retypePassword;
  final BuildContext context;

  RegisterUserWithUsernameAndPasswordEvent(
      {this.context,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.retypePassword});

  @override
  List<Object> get props =>
      [context, firstName, lastName, email, password, retypePassword];
}
