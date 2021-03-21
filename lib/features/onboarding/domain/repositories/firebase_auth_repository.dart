import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart' as registerUserWithFirebaseUsecase;
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart' as authenticateUserWithFirebaseUsecase;
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthRepository{
  Future<Either<Failure, UserCredential>>createUserWithEmailAndPassword(registerUserWithFirebaseUsecase.Params params);
  Future<Either<Failure, UserCredential>>signInWithEmailAndPassword(authenticateUserWithFirebaseUsecase.Params params);
}