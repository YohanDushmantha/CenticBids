import 'package:centic_bids/core/errors/common_failure_messages.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/network/response/error.dart';
import 'package:centic_bids/features/auctions/data/remote/data_sources/auctions_remote_datasource.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:centic_bids/features/auctions/domain/repositories/auctions_repository.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart'
    as fetchAuctionsUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/bid_now_usecase.dart'
    as bidNowUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auction_usecase.dart'
    as fetchAuctionUsecase;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class AuctionsRepositoryImpl extends AuctionsRepository {
  final AuctionsRemoteDatasource remoteDatasource;

  AuctionsRepositoryImpl({@required this.remoteDatasource});

  @override
  Future<Either<Failure, List<DocumentSnapshot>>> fetchAuctions(
      fetchAuctionsUsecase.Params params) async {
    try {
      final result = await remoteDatasource.fetchAuctions(params);
      return result != null
          ? Right(result)
          : Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
    } on Exception {
      return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
    }
  }

  @override
  Future<Either<Failure, Bid>> createBid(bidNowUsecase.Params params) async {
    try {
      final result = await remoteDatasource.createBid(params);
      return result != null
          ? Right(result)
          : Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
    } on Exception {
      return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
    }
  }

  @override
  Future<Either<Failure, AuctionItem>> fetchAuction(
      fetchAuctionUsecase.Params params) async {
    try {
      final result = await remoteDatasource.fetchAuction(params);
      return result != null
          ? Right(result)
          : Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
    } on Exception {
      return Left(ServerFailure(Error(errorMessage: SERVER_FAILURE_MESSAGE)));
    }
  }
}
