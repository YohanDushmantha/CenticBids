import 'package:centic_bids/features/onboarding/data/remote/firebase_auth_remote_datasource.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart' as authenticateUserWithFirebaseUsecase;
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart' as registerUserWithFirebaseUsecase;
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRemoteDatasourceImpl extends FirebaseAuthRemoteDatasource{
  @override
  Future<UserCredential> createUserWithEmailAndPassword(registerUserWithFirebaseUsecase.Params params) async {

      final UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );

      return userCredential;
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(authenticateUserWithFirebaseUsecase.Params params) async{
    final UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: params.email,
        password: params.password
    );

    return userCredential;
  }



}