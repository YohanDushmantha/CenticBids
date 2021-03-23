import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/presentation/helpers/bidding_bottom_sheet_helper.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_message/bottom_sheet_message_helper.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/bottom_sheet_progress_indicator_helper.dart';
import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/features/auctions/presentation/widgets/countdown.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:extended_image/extended_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/core/extensions/currency_extension.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;

class AuctionDetailPage extends StatelessWidget {
  final AuctionItem auction;
  final BottomSheetProgressIndicatorHelper bottomSheetProgressIndicatorHelper =
      di();
  final BottomSheetMessageHelper bottomSheetMessageHelper = di();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final AppStates appStates = di();
  final BiddingBottomSheetHelper biddingBottomSheetHelper = di();


  AuctionDetailPage({@required this.auction}){
    // FirebaseAuth.instance
    //     .authStateChanges()
    //     .listen((User user) {
    //   if (user == null) {
    //     appStates.userCredential = null;
    //   } else {
    //     appStates.userCredential = user;
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).auctionDetailPageTitle),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 0, bottom: 0), child: _slider(context)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(auction.title, textAlign: TextAlign.start, style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.w500),),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(S.of(context).basePrice, style: Theme.of(context).textTheme.headline4.copyWith(color: appColors.darkGray),),
                                Text(
                                  auction.basePrice.toString().toCurrency(),
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context).textTheme.headline3.copyWith(color: appColors.red),
                                )
                              ],
                            )),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(S.of(context).latestPrice, style: Theme.of(context).textTheme.headline4.copyWith(color: appColors.darkGray),),
                                Text(
                                  auction.latestPrice.toString().toCurrency(),
                                  textAlign: TextAlign.right,
                                    style: Theme.of(context).textTheme.headline3.copyWith(color: appColors.green),
                                )
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Countdown(timestamp: auction?.clearanceTime),
                    ),
                    Text(auction?.description, style: Theme.of(context).textTheme.bodyText1,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _submitBtn(context),
    );
  }

  Widget _slider(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 4/3,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: auction?.images
          .map<Widget>((item) => Container(
                child: ExtendedImage.network(
                  item,
                  cache: true,
                ),
              ))
          .toList(),
    );
  }

  Widget _submitBtn(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: MainBarButton(
          title: S.of(context).bid,
          onTapCallback: () => _onTapBid(context),
        ),
      ),
      elevation: 2,
    );
  }

  _onTapBid(BuildContext context) {
    // User user = FirebaseAuth.instance.currentUser;
    // if(user != null){
    //   print('YD --> user not null '+user.email);
    // }else{
    //   print('YD --> user null ');
    // }
    if(appStates.appUser != null){
      biddingBottomSheetHelper.show(context: context,
              auction: auction,
              isDismissible: true,
              isDraggable: true,
          onTapSubmitCallback: (value) => {
        _onSubmitBiddingBottomSheet(value)
      });
    }else{
      ExtendedNavigator.of(context).pushSignInPage().then((appUser) => _returnFromSignUpPage(context,appUser));
    }
  }
  
  _returnFromSignUpPage(BuildContext context, AppUser appUser){
    print('YD -> return from signup page');
    if(appUser != null){
      print('YD -> return from signup page'+appUser?.email);
      biddingBottomSheetHelper.show(context: context,
          auction: auction,
          isDismissible: true,
          isDraggable: true,
          onTapSubmitCallback: (value) => {
            _onSubmitBiddingBottomSheet(value)
          });
    }
  }

  _onSubmitBiddingBottomSheet(String value){

  }
  
}
