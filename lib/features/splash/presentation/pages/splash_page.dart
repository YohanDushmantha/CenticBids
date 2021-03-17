import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{

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