import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

abstract class SignInState extends Equatable {
  const SignInState();
}

class SignInInitial extends SignInState {
  @override
  List<Object> get props => [];
}

class Loading extends SignInState{
  @override
  List<Object> get props => [];
}

class AuthenticateWithUsernameAndPasswordSuccess extends SignInState{
  final UserCredential userCredential;

  AuthenticateWithUsernameAndPasswordSuccess({@required this.userCredential});

  @override
  List<Object> get props => [userCredential];
}

class Error extends SignInState{
  final RuntimeError runtimeError;

  Error({this.runtimeError});

  @override
  List<Object> get props => [runtimeError];
}
