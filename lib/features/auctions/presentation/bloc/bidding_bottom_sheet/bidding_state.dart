import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:equatable/equatable.dart';

abstract class BiddingState extends Equatable {
  final int biddingAmount;
  const BiddingState(this.biddingAmount);

  @override
  List<Object> get props => [biddingAmount];
}

class BiddingInitialState extends BiddingState {
  final int biddingAmount;
  BiddingInitialState({this.biddingAmount}) : super(biddingAmount);
  @override
  List<Object> get props => [];
}

class IncrementedState extends BiddingState {
  final int biddingAmount;
  IncrementedState({this.biddingAmount}) : super(biddingAmount);
  @override
  List<Object> get props => [biddingAmount];
}

class DecrementedState extends BiddingState {
  final int biddingAmount;
  DecrementedState({this.biddingAmount}) : super(biddingAmount);
  @override
  List<Object> get props => [biddingAmount];
}

class BiddingError extends BiddingState {
  final int biddingAmount;
  final RuntimeError runtimeError;
  BiddingError({this.biddingAmount, this.runtimeError}) : super(biddingAmount);
  @override
  List<Object> get props => [biddingAmount, runtimeError];
}

class Loading extends BiddingState {
  Loading(int biddingAmount) : super(biddingAmount);
  @override
  List<Object> get props => [];
}

class LoadingBidNow extends BiddingState {
  LoadingBidNow(int biddingAmount) : super(biddingAmount);
  @override
  List<Object> get props => [];
}

class LoadedBidNow extends BiddingState {
  final Bid bid;
  LoadedBidNow({this.bid}) : super(bid.biddingAmount);
  @override
  List<Object> get props => [bid];
}


