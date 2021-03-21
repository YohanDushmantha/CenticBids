import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}

class RegisterUserWithUsernameAndPasswordEvent extends SignUpEvent{
  final String email;
  final String password;
  final String retypePassword;
  final BuildContext context;

  RegisterUserWithUsernameAndPasswordEvent({this.context, this.email, this.password, this.retypePassword});

  @override
  List<Object> get props => [context, email, password, retypePassword];
}

