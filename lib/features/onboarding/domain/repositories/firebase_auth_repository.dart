import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart'
    as registerUserWithFirebaseUsecase;
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart'
    as authenticateUserWithFirebaseUsecase;
import 'package:dartz/dartz.dart';

abstract class FirebaseAuthRepository {
  Future<Either<Failure, AppUser>> createUserWithEmailAndPassword(
      registerUserWithFirebaseUsecase.Params params);
  Future<Either<Failure, AppUser>> signInWithEmailAndPassword(
      authenticateUserWithFirebaseUsecase.Params params);
}
