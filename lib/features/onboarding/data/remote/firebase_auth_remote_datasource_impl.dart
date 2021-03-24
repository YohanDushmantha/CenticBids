import 'package:centic_bids/features/onboarding/data/remote/firebase_auth_remote_datasource.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart'
    as authenticateUserWithFirebaseUsecase;
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart'
    as registerUserWithFirebaseUsecase;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseAuthRemoteDatasourceImpl extends FirebaseAuthRemoteDatasource {
  @override
  Future<UserCredential> createUserWithEmailAndPassword(
      registerUserWithFirebaseUsecase.Params params) async {
    final UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );

    return userCredential;
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(
      authenticateUserWithFirebaseUsecase.Params params) async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: params.email, password: params.password);

    return userCredential;
  }

  @override
  Future<AppUser> createUserInFirestore(
      registerUserWithFirebaseUsecase.Params params,
      UserCredential userCredential) async {
    String firebaseToken = await FirebaseMessaging.instance.getToken();
    return await FirebaseFirestore.instance.collection('users').add({
      'email': userCredential?.user.email,
      'firstName': params?.firstName,
      'lastName': params?.lastName,
      'uid': userCredential?.user?.uid,
      'deviceToken': firebaseToken
    }).then((value) => value
        .get()
        .then((snapshot) => AppUser.fromJson(snapshot.data(), snapshot.id)));
  }

  @override
  Future<AppUser> getUserFromFirestore(
      authenticateUserWithFirebaseUsecase.Params params,
      UserCredential userCredential) async {
    Query query = await FirebaseFirestore?.instance
        ?.collection('users')
        ?.where('uid', isEqualTo: userCredential.user?.uid);

    if (query == null) {
      return null;
    }

    QueryDocumentSnapshot queryDocumentSnapshot =
        await query?.get()?.then((querySnapshot) => querySnapshot?.docs?.first);

    if (queryDocumentSnapshot == null) {
      return null;
    }

    return await queryDocumentSnapshot?.reference?.get()?.then(
        (documentSnapshot) =>
            AppUser?.fromJson(documentSnapshot.data(), documentSnapshot.id));
  }

  @override
  Future<AppUser> updateDeviceToken(AppUser appUser) async {
    String firebaseToken = await FirebaseMessaging.instance.getToken();
    await FirebaseFirestore?.instance
        ?.collection('users')
        ?.doc(appUser.id)
        ?.update({'deviceToken': firebaseToken});
  }
}
