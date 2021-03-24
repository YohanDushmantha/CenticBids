import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/core/utils/shared_pref_helper.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SharedPrefHelper sharedPrefHelper = di();
  final AppStates appStates = di();

  @override
  void initState() {
    loadLoggedInUser();
    redirectToNextPage();
    super.initState();
  }

  loadLoggedInUser() async {
    final loggedInUserString = await sharedPrefHelper.retrieve('loggedInUser');
    if (loggedInUserString != null && loggedInUserString != '') {
      final decodedValue = json.decode(loggedInUserString);
      final id = decodedValue['id'];
      appStates.appUser = AppUser.fromJson(decodedValue, id);
    }
  }

  redirectToNextPage() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      ExtendedNavigator.of(context).pop();
      ExtendedNavigator.of(context).pushHomePage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/graphics/splash.png"),
              fit: BoxFit.cover)),
      child: Container(),
    );
  }

  void onTabTapped(int index) {}
}
