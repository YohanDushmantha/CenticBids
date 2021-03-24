import 'package:centic_bids/features/home/presentation/bloc/bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {

  ///bloc
  di.registerFactory<HomeBloc>(() => HomeBloc());

}