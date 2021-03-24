import 'package:centic_bids/features/home/presentation/bloc/home_event.dart';
import 'package:centic_bids/features/home/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int selectedIndex = 0;

  HomeBloc() : super(InitialHomeState(selectedIndex: 0));

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is SelectNavItem) {
      yield LoadingState(selectedIndex: selectedIndex);
      selectedIndex = event.selectedIndex;
      yield ChangedNavItemState(selectedIndex: event.selectedIndex);
    }
  }
}
