import 'package:equatable/equatable.dart';

abstract class AuctionsEvent extends Equatable {
  const AuctionsEvent();
}

class FetchAuctions extends AuctionsEvent {
  final bool shouldReset;
  FetchAuctions({this.shouldReset = false});

  @override
  List<Object> get props => [shouldReset];
}
