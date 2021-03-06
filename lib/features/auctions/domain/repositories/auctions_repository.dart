import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart'
    as fetchAuctionsUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/bid_now_usecase.dart'
    as bidNowUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auction_usecase.dart'
    as fetchAuctionUsecase;

abstract class AuctionsRepository {
  Future<Either<Failure, List<DocumentSnapshot>>> fetchAuctions(
      fetchAuctionsUsecase.Params params);
  Future<Either<Failure, Bid>> createBid(bidNowUsecase.Params params);
  Future<Either<Failure, AuctionItem>> fetchAuction(
      fetchAuctionUsecase.Params params);
}
