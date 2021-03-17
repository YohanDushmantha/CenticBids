import 'package:centic_bids/features/onboarding/presentation/pages/sign_in_page.dart';
import 'package:centic_bids/features/onboarding/presentation/pages/sign_up_page.dart';

import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) {
  //styles
  di.registerFactory(() => SignInPageStyle());
  di.registerFactory(() => SignUpPageStyle());


  //Bloc
  // di.registerFactory<AuctionsBloc>(() => AuctionsBloc(fetchAuctions: di()));

  //Usecase
  // di.registerLazySingleton(() => FetchAuctionsUsecase(repository: di()));

  //Repository
  // di.registerLazySingleton<AuctionsRepository>(
  //         () => AuctionsRepositoryImpl(remoteDatasource: di()));

  //Datasource
  // di.registerLazySingleton<AuctionsRemoteDatasource>(
  //         () => AuctionsRemoteDatasourceImpl());
}