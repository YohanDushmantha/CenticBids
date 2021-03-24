import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/usecase/usecase.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:centic_bids/features/auctions/domain/repositories/auctions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:centic_bids/core/network/response/error.dart';

class BidNowUsecase extends UseCase<Bid, Params> {
  final AuctionsRepository repository;
  BidNowUsecase({this.repository});

  @override
  Future<Either<Failure, Bid>> call(Params params) async {
    if (params.biddingAmount > params?.auctionItem?.latestPrice) {
      return await repository.createBid(params);
    } else {
      return Left(ValidationFailure(Error(
          errorMessage: 'Bidding amount should be greater than latest bid')));
    }
  }
}

class Params extends Equatable {
  final int biddingAmount;
  final String uid;
  final String auctionId;
  final AuctionItem auctionItem;

  Params({this.biddingAmount, this.uid, this.auctionId, this.auctionItem});

  @override
  List<Object> get props => [biddingAmount, uid, auctionId, auctionItem];
}
