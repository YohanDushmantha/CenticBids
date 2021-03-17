

import 'package:equatable/equatable.dart';

abstract class AuctionsEvent extends Equatable {
  const AuctionsEvent();
}

class FetchAuctions extends AuctionsEvent{

  FetchAuctions();

  @override
  List<Object> get props => [];
}


