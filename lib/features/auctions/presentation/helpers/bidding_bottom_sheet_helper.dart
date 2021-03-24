import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/presentation/pages/bidding_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BiddingBottomSheetHelper {
  show(
      {Function(String) onTapSubmitCallback,
      BuildContext context,
      bool isDismissible,
      bool isDraggable,
      AuctionItem auction}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          isDismissible: isDismissible ?? false,
          enableDrag: isDraggable ?? false,
          isScrollControlled: true,
          builder: (BuildContext bc) {
            return WillPopScope(
              onWillPop: () {
                return Future.value(isDismissible ?? false);
              },
              child: BiddingBottomSheet(
                onTapSubmitCallback: onTapSubmitCallback,
                auction: auction,
              ),
            );
          });
    });
  }
}
