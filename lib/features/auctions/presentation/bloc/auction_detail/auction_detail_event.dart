import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class AuctionDetailEvent extends Equatable {
  const AuctionDetailEvent();
}

class FetchAuction extends AuctionDetailEvent{
  final String auctionId;
  FetchAuction({@required this.auctionId});

  @override
  List<Object> get props => [auctionId];
}
