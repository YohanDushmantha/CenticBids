import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:equatable/equatable.dart';

abstract class BiddingEvent extends Equatable {
  const BiddingEvent();
}

class SetBiddingAmount extends BiddingEvent {
  final int biddingAmount;
  final int latestBid;
  SetBiddingAmount({this.biddingAmount, this.latestBid});

  @override
  List<Object> get props => [biddingAmount, latestBid];
}

class IncrementEvent extends BiddingEvent {
  const IncrementEvent();

  @override
  List<Object> get props => [];
}

class DecrementEvent extends BiddingEvent {
  const DecrementEvent();

  @override
  List<Object> get props => [];
}

class BidNowEvent extends BiddingEvent {
  final AuctionItem auction;
  final AppUser appUser;
  const BidNowEvent({this.auction, this.appUser});

  @override
  List<Object> get props => [auction, appUser];
}
