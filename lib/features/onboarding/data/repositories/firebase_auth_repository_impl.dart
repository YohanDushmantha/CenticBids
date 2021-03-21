import 'package:centic_bids/core/errors/common_failure_messages.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/network/response/error.dart';
import 'package:centic_bids/core/utils/network_info/network_info.dart';
import 'package:centic_bids/features/onboarding/data/remote/firebase_auth_remote_datasource.dart';
import 'package:centic_bids/features/onboarding/domain/repositories/firebase_auth_repository.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart' as authenticateUserWithFirebaseUsecase;
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart' as registerUserWithFirebaseUsecase;
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepositoryImpl extends FirebaseAuthRepository{
  final FirebaseAuthRemoteDatasource remoteDatasource;
  final NetworkInfo networkInfo;

  FirebaseAuthRepositoryImpl({this.remoteDatasource, this.networkInfo});

  @override
  Future<Either<Failure, UserCredential>> createUserWithEmailAndPassword(registerUserWithFirebaseUsecase.Params params) async{
    if (true) {
      try {
        final response = await remoteDatasource.createUserWithEmailAndPassword(
            params);
        return Right(response);
      } on FirebaseAuthException catch (e){
        if (e.code == 'weak-password') {
          return Left(ServerFailure(Error(errorMessage: 'The password provided is too weak.')));
        } else if (e.code == 'email-already-in-use') {
          return Left(ServerFailure(Error(errorMessage: 'The account already exists for that email.')));
        }else{
          return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
        }
    }on Exception{
        return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
      }
    } else {
      return Left(NetworkFailure(Error(errorMessage: NETWORK_FAILURE_MESSAGE)));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(authenticateUserWithFirebaseUsecase.Params params) async{
    if (true) {
      try {
        final response = await remoteDatasource.signInWithEmailAndPassword(
            params);
        return Right(response);
      } on FirebaseAuthException catch (e){
        if (e.code == 'user-not-found') {
          return Left(ServerFailure(Error(errorMessage: 'No user found for that email.')));
        } else if (e.code == 'wrong-password') {
          return Left(ServerFailure(Error(errorMessage: 'Wrong password provided for that user.')));
        }else{
          return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
        }
      }on Exception{
        return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
      }
    } else {
      return Left(NetworkFailure(Error(errorMessage: NETWORK_FAILURE_MESSAGE)));
    }
  }

}