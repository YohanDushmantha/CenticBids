import 'package:auto_route/auto_route_annotations.dart';
import 'package:centic_bids/features/auctions/presentation/pages/auction_detail_page.dart';
import 'package:centic_bids/features/home/presentation/pages/home_page.dart';
import 'package:centic_bids/features/onboarding/presentation/pages/sign_in_page.dart';
import 'package:centic_bids/features/onboarding/presentation/pages/sign_up_page.dart';
import 'package:centic_bids/features/splash/presentation/pages/splash_page.dart';
/// https://pub.dev/packages/auto_route
/// Use the [watch] flag to watch the files system for edits and rebuild as necessary.
///
///flutter packages pub run build_runner watch
///if you want the generator to run one time and exits use
///
///flutter packages pub run build_runner build
@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: AuctionDetailPage),
    MaterialRoute(page: SignInPage,name: 'sign-in'),
    MaterialRoute(page: SignUpPage, name: 'sign-up')
  ]
)
class $Router {

}