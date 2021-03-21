// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/auctions/domain/entities/auction_item.dart';
import '../features/auctions/presentation/pages/auction_detail_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/onboarding/presentation/pages/sign_in_page.dart';
import '../features/onboarding/presentation/pages/sign_up_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String homePage = '/home-page';
  static const String auctionDetailPage = '/auction-detail-page';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const all = <String>{
    splashPage,
    homePage,
    auctionDetailPage,
    signInPage,
    signUpPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.auctionDetailPage, page: AuctionDetailPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    AuctionDetailPage: (data) {
      final args = data.getArgs<AuctionDetailPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuctionDetailPage(auction: args.auction),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushAuctionDetailPage({
    @required AuctionItem auction,
  }) =>
      push<dynamic>(
        Routes.auctionDetailPage,
        arguments: AuctionDetailPageArguments(auction: auction),
      );

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AuctionDetailPage arguments holder class
class AuctionDetailPageArguments {
  final AuctionItem auction;
  AuctionDetailPageArguments({@required this.auction});
}
