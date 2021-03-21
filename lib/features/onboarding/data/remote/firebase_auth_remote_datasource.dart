import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart' as registerUserWithFirebaseUsecase;
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart' as authenticateUserWithFirebaseUsecase;
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthRemoteDatasource{
  Future<UserCredential> createUserWithEmailAndPassword(registerUserWithFirebaseUsecase.Params params);
  Future<UserCredential> signInWithEmailAndPassword(authenticateUserWithFirebaseUsecase.Params params);
}