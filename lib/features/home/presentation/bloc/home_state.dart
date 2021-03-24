import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class HomeState extends Equatable {
  final int selectedIndex;
  HomeState({@required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}

class InitialHomeState extends HomeState {
  InitialHomeState({@required int selectedIndex})
      : super(selectedIndex: selectedIndex);

  @override
  List<Object> get props => [];
}

class LoadingState extends HomeState {
  LoadingState({@required int selectedIndex})
      : super(selectedIndex: selectedIndex);

  @override
  List<Object> get props => [];
}

class ChangedNavItemState extends HomeState {
  ChangedNavItemState({@required int selectedIndex})
      : super(selectedIndex: selectedIndex);

  @override
  List<Object> get props => [];
}
