import 'package:bloc/bloc.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/error_handling_bloc_mixin.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState>  with ErrorHandlingBlocMixin{
  final SignInWithEmailAndPasswordUseCase signInWithEmailAndPasswordUseCase;
  SignInBloc({@required this.signInWithEmailAndPasswordUseCase}) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if(event is AuthenticateWithUsernameAndPasswordEvent){
      yield Loading();
      final failureOrAuthenticate = await signInWithEmailAndPasswordUseCase(Params(context: event.context, email:event.email, password:event.password));
      yield* _eitherAuthenticationSuccessOrErrorState(failureOrAuthenticate);
    }
  }

  Stream<SignInState> _eitherAuthenticationSuccessOrErrorState(
      Either<Failure, AppUser> either) async* {
    yield either.fold(
            (failure) => Error(runtimeError: mapFailureToRuntimeError(failure)),
            (appUser) => AuthenticateWithUsernameAndPasswordSuccess(appUser: appUser));
  }
}
