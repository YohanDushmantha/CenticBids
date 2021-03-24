import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/ui/widgets/buttons/small_outline_button.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:centic_bids/features/auctions/presentation/widgets/countdown.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:centic_bids/core/extensions/currency_extension.dart';

class AuctionItemTile extends StatelessWidget {
  final AuctionItem item;
  final AuctionItemTileStyles styles = di();
  final Function(AuctionItem) onSelectedTileCallback;

  AuctionItemTile({@required this.item, this.onSelectedTileCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => _onTapBid(context, item),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    item.title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: appColors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(S.of(context).basePrice,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(color: styles.priceTitleColor)),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            item.basePrice.toString().toCurrency(),
                            textAlign: TextAlign.right,
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(color: styles.basePriceColor),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            S.of(context).latestPrice,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: styles.priceTitleColor),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            item.latestPrice.toString().toCurrency(),
                            textAlign: TextAlign.right,
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(color: styles.latestPriceColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        child: ExtendedImage.network(
                          item.images[0],
                          cache: true,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Countdown(timestamp: item.clearanceTime),
                          SizedBox(
                            height: 16,
                          ),
                          SmallOutlineButton(
                            type: WidgetType.PRIMARY,
                            title: S.of(context).viewMore,
                            onTapCallback: () => _onTapBid(context, item),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onTapBid(BuildContext context, AuctionItem auctionItem) {
    onSelectedTileCallback(auctionItem);
  }
}

class AuctionItemTileStyles {
  final priceTitleColor = appColors.darkGray;
  final basePriceColor = appColors.red;
  final latestPriceColor = appColors.green;
}
