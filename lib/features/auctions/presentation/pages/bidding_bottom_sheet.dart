import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_message/bottom_sheet_message_helper.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/bottom_sheet_progress_indicator_helper.dart';
import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/buttons/rounded_icon_outline_button.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/bidding_bottom_sheet/bidding_bloc.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/bidding_bottom_sheet/bloc.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:centic_bids/core/extensions/currency_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

class BiddingBottomSheet extends StatefulWidget {
  final Function(String) onTapSubmitCallback;
  final AuctionItem auction;

  BiddingBottomSheet({this.onTapSubmitCallback, this.auction});

  @override
  _BiddingBottomSheetState createState() => _BiddingBottomSheetState();
}

class _BiddingBottomSheetState extends State<BiddingBottomSheet> {
  final BiddingBloc biddingBloc = di<BiddingBloc>();
  final BottomSheetMessageHelper bottomSheetMessageHelper = di();
  final BottomSheetProgressIndicatorHelper bottomSheetProgressIndicatorHelper = di();
  final AppStates appStates = di();
  Timer timer;

  @override
  void initState() {
    biddingBloc
        .add(SetBiddingAmount(biddingAmount: widget?.auction?.latestPrice, latestBid: widget?.auction?.latestPrice));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BiddingBloc, BiddingState>(
        cubit: biddingBloc,
        listener: (context, state) {
          state is LoadingBidNow
              ? bottomSheetProgressIndicatorHelper.showCircularProgressBar(parentContext: context)
              : bottomSheetProgressIndicatorHelper.hideCircularProgressBar(context);

          if(state is BiddingError){
            bottomSheetMessageHelper.showMessage(
              type: WidgetType.ERROR,
              message: state?.runtimeError?.message,
              context: context,
            );
          }

          if(state is LoadedBidNow){
            bottomSheetMessageHelper.showMessage(
              type: WidgetType.SUCCESS,
              message: 'You have made a bid successfully',
              context: context,
              onTapSubmitCallback: () => _onTapSuccessMessageSubmitBtn()
            );
          }
        },
        builder: (context, state) {
          return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(24.0),
                    child: Wrap(
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              S.of(context).biddingPageTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 48,
                            ),
                            _pricePanel(context, state),
                            _bidder(context, state),
                            _bottomButtonBar(context, state)
                          ],
                        )
                      ],
                    ),
                  )));
        });
  }

  _pricePanel(BuildContext context, BiddingState biddingState) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).basePrice,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: appColors.darkGray),
            ),
            Text(
              widget.auction?.basePrice.toString().toCurrency(),
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: appColors.red),
            )
          ],
        )),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              S.of(context).latestPrice,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: appColors.darkGray),
            ),
            Text(
              widget.auction?.latestPrice?.toString()?.toCurrency(),
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: appColors.green),
            )
          ],
        ))
      ],
    );
  }

  _bidder(BuildContext context, BiddingState biddingState) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 24.0, top: 48),
        child: Row(
          children: [
            RoundedIconOutlineButton(
              type: WidgetType.ERROR,
              iconData: Icons.arrow_downward,
              onTapCallback: () => _onTapDecrement(),
              onTapUpCallback: () => _onTapUpDecrement(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  biddingState.biddingAmount?.toString()?.toCurrency(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            RoundedIconOutlineButton(
              type: WidgetType.SUCCESS,
              iconData: Icons.arrow_upward,
              onTapCallback: () => _onTapIncrement(),
              onTapUpCallback: () => _onTapUpIncrement(),
            ),
          ],
        ));
  }

  _bottomButtonBar(BuildContext context, BiddingState state) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12, top: 48),
      child: Row(
        children: [
          Expanded(
            child: MainBarButton(
                type: WidgetType.ERROR,
                title: S.of(context).biddingCloseBtnTitle,
                onTapCallback: () => {_onTapClose(context)}),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: MainBarButton(
                type: WidgetType.SUCCESS,
                title: S.of(context).biddingBidNowBtnTitle,
                onTapCallback: () => _onTapBidNow()),
          )
        ],
      ),
    );
  }

  _onTapClose(BuildContext context) {
    ExtendedNavigator.of(context).pop();
  }

  _onTapBidNow() {
    biddingBloc.add(BidNowEvent(appUser: appStates?.appUser, auction: widget?.auction));
  }

  _onTapIncrement() {
    biddingBloc.add(IncrementEvent());
    timer = Timer.periodic(Duration(milliseconds: 50), (t) {
      biddingBloc.add(IncrementEvent());
    });
  }

  _onTapUpIncrement() {
    timer?.cancel();
  }

  _onTapDecrement() {
    biddingBloc.add(DecrementEvent());
    timer = Timer.periodic(Duration(milliseconds: 50), (t) {
      biddingBloc.add(DecrementEvent());
    });
  }

  _onTapUpDecrement() {
    timer?.cancel();
  }

  _onTapSuccessMessageSubmitBtn(){
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.of(context).popUntil((route) => route.isFirst);
    });
  }
}

class BiddingBottomSheetStyles {}
