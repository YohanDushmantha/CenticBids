import 'dart:convert';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/core/utils/shared_pref_helper.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SharedPrefHelper sharedPrefHelper = di();
  final AppStates appStates = di();

  @override
  void initState() {
    final loggedInUserString = sharedPrefHelper.retrieve('loggedInUser');
    if(loggedInUserString != null && loggedInUserString != ''){
      final decodedValue = json.decode(loggedInUserString);
      final id = decodedValue['id'];
      print('YD --> loading auth data id'+id);
      appStates.appUser = AppUser.fromJson(decodedValue, id);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(onPressed: (){
                  ExtendedNavigator.of(context).pushHomePage();
                }, child: Text('Next Page'),),
              ),
              Text('Headline 1', style: Theme.of(context).textTheme.headline1,),
              Text('Headline 2', style: Theme.of(context).textTheme.headline2,),
              Text('Headline 3', style: Theme.of(context).textTheme.headline3,),
              Text('Headline 4', style: Theme.of(context).textTheme.headline4,),
              Text('Headline 5', style: Theme.of(context).textTheme.headline5,),
              Text('Headline 6', style: Theme.of(context).textTheme.headline6,),
              Text('Subtitle 1', style: Theme.of(context).textTheme.subtitle1,),
              Text('Subtitle 2', style: Theme.of(context).textTheme.subtitle2,),
              Text('Body text 1', style: Theme.of(context).textTheme.bodyText1,),
              Text('Body text 2', style: Theme.of(context).textTheme.bodyText2,),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (event) => (event){}, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {

  }
}