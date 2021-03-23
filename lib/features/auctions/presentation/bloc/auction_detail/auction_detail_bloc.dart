import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/error_handling_bloc_mixin.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:dartz/dartz.dart';
import 'auction_detail_event.dart';
import 'bloc.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auction_usecase.dart' as fetchAuctionUsecase;

class AuctionDetailBloc extends Bloc<AuctionDetailEvent, AuctionDetailState> with ErrorHandlingBlocMixin {
  AuctionItem auctionItem;
  final fetchAuctionUsecase.FetchAuctionUsecase fetchAuction;
  AuctionDetailBloc({this.fetchAuction}) : super(AuctionDetailInitial(auctionItem: null));

  @override
  Stream<AuctionDetailState> mapEventToState(
    AuctionDetailEvent event,
  ) async* {
    print('YD -> state is mapEventToState');
    if (event is FetchAuction) {
      yield Loading(auctionItem: auctionItem);
      final failOrAuctionItem = await fetchAuction(
          fetchAuctionUsecase.Params(
              auctionId: event.auctionId));

      yield* _eitherLoadedOrErrorState(failOrAuctionItem);
    }
  }

  Stream<AuctionDetailState> _eitherLoadedOrErrorState(
      Either<Failure, AuctionItem> either) async* {
    yield either.fold((failure) {
      return Error(runtimeError: mapFailureToRuntimeError(failure), auctionItem: auctionItem);
    }, (result) {
      auctionItem = result;
      return AuctionLoaded(auctionItem: auctionItem);
    });
  }
}
