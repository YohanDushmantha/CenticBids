import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class AuctionsState extends Equatable {
  List<DocumentSnapshot> auctionList;
  AuctionsState({@required this.auctionList});

  @override
  List<Object> get props => [auctionList];
}

class AuctionsInitial extends AuctionsState {
  AuctionsInitial({@required List<DocumentSnapshot> auctionList}): super(auctionList: auctionList);
  @override
  List<Object> get props => [];
}

class Loading extends AuctionsState{
  Loading({@required List<DocumentSnapshot> auctionList}): super(auctionList: auctionList);
  @override
  List<Object> get props => [];
}

class Error extends AuctionsState{
  Error({@required List<DocumentSnapshot> auctionList}): super(auctionList: auctionList);
  @override
  List<Object> get props => [];
}

class AuctionLoaded extends AuctionsState{
  AuctionLoaded({@required List<DocumentSnapshot> auctionList}): super(auctionList: auctionList);
  @override
  List<Object> get props => [];
}
