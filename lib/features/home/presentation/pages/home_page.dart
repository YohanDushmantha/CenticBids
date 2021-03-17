import 'package:centic_bids/features/auctions/presentation/pages/auctions_page.dart';
import 'package:centic_bids/features/home/presentation/bloc/bloc.dart';
import 'package:centic_bids/features/profile/presentation/pages/profile_page.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';

class HomePage extends StatelessWidget {
  final HomeBloc homeBloc = di<HomeBloc>();

  final List<Widget> _children = [
    AuctionsPage(),
    AuctionsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        cubit: homeBloc,
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Text(getTitle(context,state)),
                automaticallyImplyLeading: false,
              ),
              body: SafeArea(
                child: _children[state.selectedIndex],
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: (event) {
                  homeBloc.add(SelectNavItem(selectedIndex: event));
                }, // new
                currentIndex: state.selectedIndex, // new
                items: [
                  new BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    label: S.of(context).auctionPageTitle,
                  ),
                  new BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: S.of(context).myBiddingsPageTitle,
                  ),
                  new BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: S.of(context).accountPageTitle)
                ],
              ));
        });
  }
  
  String getTitle(BuildContext context,HomeState state){
    switch(state.selectedIndex){
      case 0: 
        return S.of(context).auctionPageTitle;
      case 1: 
        return S.of(context).myBiddingsPageTitle;
      case 2:
        return S.of(context).accountPageTitle;
    }
  }
}
