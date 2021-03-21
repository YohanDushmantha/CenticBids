import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class AuthenticateWithUsernameAndPasswordEvent extends SignInEvent{
  final String email;
  final String password;
  final BuildContext context;

  AuthenticateWithUsernameAndPasswordEvent({this.context, this.email, this.password});

  @override
  List<Object> get props => [context, email, password];
}