import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart'
    as fetchAuctionsUsecase;
import 'package:dartz/dartz.dart';

import 'bloc.dart';

class AuctionsBloc extends Bloc<AuctionsEvent, AuctionsState> {
  List<DocumentSnapshot> auctionList = [];
  final fetchAuctionsUsecase.FetchAuctionsUsecase fetchAuctions;
  AuctionsBloc({this.fetchAuctions}) : super(AuctionsInitial(auctionList: []));

  @override
  Stream<AuctionsState> mapEventToState(
    AuctionsEvent event,
  ) async* {
    print('YD -> state is mapEventToState');
    if (event is FetchAuctions) {
      print('YD -> state is FetchAuctions');
      yield Loading(auctionList: auctionList);
      final failOrAuctionsList = await fetchAuctions(
          fetchAuctionsUsecase.Params(
              startDocument: auctionList.length > 0 ? auctionList.last : null));
      // if(failOrAuctionsList.isRight()){
      //   auctionList.addAll(failOrAuctionsList.ri)
      // }
      yield* _eitherLoadedOrErrorState(failOrAuctionsList);
    }
  }

  Stream<AuctionsState> _eitherLoadedOrErrorState(
      Either<Failure, List<DocumentSnapshot>> either) async* {
    yield either.fold((failure) {
      return Error(auctionList: auctionList);
    }, (result) {
      auctionList.addAll(result);
      return AuctionLoaded(auctionList: auctionList);
    });
  }
}
