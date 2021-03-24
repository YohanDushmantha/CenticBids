import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class SelectNavItem extends HomeEvent {
  final int selectedIndex;
  SelectNavItem({@required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}
