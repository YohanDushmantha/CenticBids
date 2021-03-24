import 'package:centic_bids/features/onboarding/data/remote/firebase_auth_remote_datasource.dart';
import 'package:centic_bids/features/onboarding/data/remote/firebase_auth_remote_datasource_impl.dart';
import 'package:centic_bids/features/onboarding/data/repositories/firebase_auth_repository_impl.dart';
import 'package:centic_bids/features/onboarding/domain/repositories/firebase_auth_repository.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/authenticate_user_with_firebase_usecase.dart';
import 'package:centic_bids/features/onboarding/domain/use_case/register_user_with_firebase_usecase.dart';
import 'package:centic_bids/features/onboarding/presentation/bloc/sign_in/bloc.dart';
import 'package:centic_bids/features/onboarding/presentation/bloc/sign_up/bloc.dart';
import 'package:centic_bids/features/onboarding/presentation/pages/sign_in_page.dart';
import 'package:centic_bids/features/onboarding/presentation/pages/sign_up_page.dart';

import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) {
  //styles
  di.registerFactory(() => SignInPageStyle());
  di.registerFactory(() => SignUpPageStyle());


  //Bloc
  di.registerFactory<SignUpBloc>(() => SignUpBloc(registerUserWithFirebaseUseCase: di()));
  di.registerFactory<SignInBloc>(() => SignInBloc(signInWithEmailAndPasswordUseCase: di()));

  //Usecase
  di.registerLazySingleton(() => RegisterUserWithFirebaseUseCase(repository: di(), validator: di()));
  di.registerLazySingleton(() => SignInWithEmailAndPasswordUseCase(repository: di(), validator: di()));

  //Repository
  di.registerLazySingleton<FirebaseAuthRepository>(() => FirebaseAuthRepositoryImpl(remoteDatasource: di(), networkInfo: di()));

  //Datasource
  di.registerLazySingleton<FirebaseAuthRemoteDatasource>(() => FirebaseAuthRemoteDatasourceImpl());
}