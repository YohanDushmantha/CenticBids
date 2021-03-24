import 'package:centic_bids/features/profile/presentation/pages/profile_page.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {
  di.registerLazySingleton(() => ProfilePageStyles());
}