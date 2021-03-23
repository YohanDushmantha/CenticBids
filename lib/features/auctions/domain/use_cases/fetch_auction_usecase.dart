import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/usecase/usecase.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/domain/repositories/auctions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class FetchAuctionUsecase extends UseCase<AuctionItem, Params>{
  final AuctionsRepository repository;

  FetchAuctionUsecase({this.repository});
  @override
  Future<Either<Failure, AuctionItem>> call(Params params) async{
    return await repository.fetchAuction(params);
  }

}

class Params extends Equatable{
  final String auctionId;

  Params({@required this.auctionId});

  @override
  List<Object> get props => [auctionId];
}