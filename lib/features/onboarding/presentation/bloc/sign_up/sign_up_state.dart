import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();
}

class SignUpInitial extends SignUpState {
  @override
  List<Object> get props => [];
}

class Loading extends SignUpState{
  @override
  List<Object> get props => [];
}

class RegisterUserWithUsernameAndPasswordSuccess extends SignUpState{
  final UserCredential userCredential;

  RegisterUserWithUsernameAndPasswordSuccess({@required this.userCredential});

 @override
  List<Object> get props => [userCredential];
}

class Error extends SignUpState{
  final RuntimeError runtimeError;

  Error({this.runtimeError});

  @override
  List<Object> get props => [runtimeError];
}
