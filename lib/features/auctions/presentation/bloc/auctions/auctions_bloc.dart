import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/error_handling_bloc_mixin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart'
    as fetchAuctionsUsecase;
import 'package:dartz/dartz.dart';

import 'bloc.dart';

class AuctionsBloc extends Bloc<AuctionsEvent, AuctionsState>
    with ErrorHandlingBlocMixin {
  List<DocumentSnapshot> auctionList = [];
  final fetchAuctionsUsecase.FetchAuctionsUsecase fetchAuctions;
  AuctionsBloc({this.fetchAuctions}) : super(AuctionsInitial(auctionList: []));

  @override
  Stream<AuctionsState> mapEventToState(
    AuctionsEvent event,
  ) async* {
    if (event is FetchAuctions) {
      if (event.shouldReset == true) {
        auctionList = [];
      }
      yield Loading(auctionList: auctionList);
      final failOrAuctionsList = await fetchAuctions(
          fetchAuctionsUsecase.Params(
              startDocument: auctionList.length > 0 ? auctionList.last : null));
      yield* _eitherLoadedOrErrorState(failOrAuctionsList);
    }
  }

  Stream<AuctionsState> _eitherLoadedOrErrorState(
      Either<Failure, List<DocumentSnapshot>> either) async* {
    yield either.fold((failure) {
      return Error(
          auctionList: auctionList,
          runtimeError: mapFailureToRuntimeError(failure));
    }, (result) {
      auctionList?.addAll(result);
      return AuctionLoaded(auctionList: auctionList);
    });
  }
}
