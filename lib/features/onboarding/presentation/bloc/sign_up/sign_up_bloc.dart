import 'package:bloc/bloc.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/error_handling_bloc_mixin.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart'
    as authenticateUserWithFirebase;
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart'
    as registerUserWithFirebase;
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';

import 'bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with ErrorHandlingBlocMixin {
  final registerUserWithFirebase.RegisterUserWithFirebaseUseCase
      registerUserWithFirebaseUseCase;
  final authenticateUserWithFirebase.SignInWithEmailAndPasswordUseCase
      signInWithEmailAndPasswordUseCase;
  SignUpBloc(
      {@required this.registerUserWithFirebaseUseCase,
      @required this.signInWithEmailAndPasswordUseCase})
      : super(SignUpInitial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    if (event is RegisterUserWithUsernameAndPasswordEvent) {
      yield Loading();
      final failureOrRegister = await registerUserWithFirebaseUseCase(
          registerUserWithFirebase.Params(
              context: event.context,
              firstName: event.firstName,
              lastName: event.lastName,
              email: event.email,
              password: event.password,
              retypePassword: event.retypePassword));
      yield* _eitherRegistrationSuccessOrErrorState(failureOrRegister);
    }
  }

  Stream<SignUpState> _eitherRegistrationSuccessOrErrorState(
      Either<Failure, AppUser> either) async* {
    yield either.fold(
        (failure) => Error(runtimeError: mapFailureToRuntimeError(failure)),
        (appUser) =>
            RegisterUserWithUsernameAndPasswordSuccess(appUser: appUser));
  }
}
