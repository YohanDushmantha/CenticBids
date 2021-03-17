import 'package:centic_bids/features/auctions/data/remote/data_sources/auctions_remote_datasource.dart';
import 'package:centic_bids/features/auctions/data/remote/data_sources/auctions_remote_datasource_impl.dart';
import 'package:centic_bids/features/auctions/data/repositories/auctions_repository_impl.dart';
import 'package:centic_bids/features/auctions/domain/repositories/auctions_repository.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/auctions/auctions_bloc.dart';
import 'package:centic_bids/features/auctions/presentation/widgets/auction_item_tile.dart';
import 'package:centic_bids/features/auctions/presentation/widgets/countdown.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) {
  //styles
  di.registerLazySingleton(() => AuctionItemTileStyles());
  di.registerLazySingleton(() => CountdownStyle());

  //Bloc
  di.registerFactory<AuctionsBloc>(() => AuctionsBloc(fetchAuctions: di()));

  //Usecase
  di.registerLazySingleton(() => FetchAuctionsUsecase(repository: di()));

  //Repository
  di.registerLazySingleton<AuctionsRepository>(
      () => AuctionsRepositoryImpl(remoteDatasource: di()));

  //Datasource
  di.registerLazySingleton<AuctionsRemoteDatasource>(
      () => AuctionsRemoteDatasourceImpl());
}
