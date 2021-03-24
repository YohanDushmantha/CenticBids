import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class SignInState extends Equatable {
  const SignInState();
}

class SignInInitial extends SignInState {
  @override
  List<Object> get props => [];
}

class Loading extends SignInState {
  @override
  List<Object> get props => [];
}

class AuthenticateWithUsernameAndPasswordSuccess extends SignInState {
  final AppUser appUser;

  AuthenticateWithUsernameAndPasswordSuccess({@required this.appUser});

  @override
  List<Object> get props => [appUser];
}

class Error extends SignInState {
  final RuntimeError runtimeError;

  Error({this.runtimeError});

  @override
  List<Object> get props => [runtimeError];
}
