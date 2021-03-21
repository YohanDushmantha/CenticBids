import 'package:centic_bids/core/states/app_states.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {
  di.registerLazySingleton(() => AppStates());
}