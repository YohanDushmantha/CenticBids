import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AuctionDetailState extends Equatable {
  AuctionItem auctionItem;
  AuctionDetailState({@required this.auctionItem});
  
  @override
  List<Object> get props => [auctionItem];
}

class AuctionDetailInitial extends AuctionDetailState {
  AuctionDetailInitial({@required AuctionItem auctionItem}): super(auctionItem: auctionItem);
  @override
  List<Object> get props => [];
}

class Loading extends AuctionDetailState{
  Loading({@required AuctionItem auctionItem}): super(auctionItem: auctionItem);
  @override
  List<Object> get props => [];
}

class Error extends AuctionDetailState{
  final RuntimeError runtimeError;

  Error({@required AuctionItem auctionItem, this.runtimeError}):super(auctionItem: auctionItem);

  @override
  List<Object> get props => [runtimeError];
}

class AuctionLoaded extends AuctionDetailState{
  AuctionLoaded({@required AuctionItem auctionItem}): super(auctionItem: auctionItem);
  @override
  List<Object> get props => [];
}
