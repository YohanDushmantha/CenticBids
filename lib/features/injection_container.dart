import 'package:get_it/get_it.dart';
import 'package:centic_bids/features/home/injection_container.dart' as homeDi;
import 'package:centic_bids/features/auctions/injection_container.dart' as auctionsDi;
import 'package:centic_bids/features/onboarding/injection_container.dart' as onboardingDi;
import 'package:centic_bids/features/profile/injection_container.dart' as profileDi;

Future<void> init(GetIt di) async {
  //features
  homeDi.init(di);
  auctionsDi.init(di);
  onboardingDi.init(di);
  profileDi.init(di);
}