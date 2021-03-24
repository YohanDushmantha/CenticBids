import 'package:centic_bids/core/features/presentation/pages/base_page.dart';
import 'package:centic_bids/core/features/presentation/pages/basic_page_mixin.dart';
import 'package:centic_bids/core/features/presentation/pages/error_handling_page_mixin.dart';
import 'package:centic_bids/features/auctions/presentation/pages/auctions_page.dart';
import 'package:centic_bids/features/home/presentation/bloc/bloc.dart';
import 'package:centic_bids/features/profile/presentation/pages/profile_page.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';

class HomePage extends BasePage {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> with BasicPage, ErrorHandlingPageMixin {
  final HomeBloc homeBloc = di<HomeBloc>();

  List<Widget> _children = [];

  @override
  void initState() {
    _children = [
      AuctionsPage(),
      ProfilePage(
        stateUpdateCallback: (index) => _stateUpdateCallback(index),
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        cubit: homeBloc,
        listener: (context, state) {},
        builder: (context, state) {
          return WillPopScope(
            onWillPop: onWillPop,
            child: Scaffold(
                appBar: AppBar(
                  title: Text(getTitle(context, state)),
                  automaticallyImplyLeading: false,
                  brightness: Brightness.dark,
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
                        icon: Icon(Icons.person),
                        label: S.of(context).accountPageTitle)
                  ],
                )),
          );
        });
  }

  String getTitle(BuildContext context, HomeState state) {
    switch (state.selectedIndex) {
      case 0:
        return S.of(context).auctionPageTitle;
      case 1:
        return S.of(context).accountPageTitle;
    }
  }

  _stateUpdateCallback(int index) {
    homeBloc.add(SelectNavItem(selectedIndex: 0));
  }
}
