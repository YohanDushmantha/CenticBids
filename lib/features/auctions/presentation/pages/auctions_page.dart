import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/features/presentation/pages/base_page.dart';
import 'package:centic_bids/core/features/presentation/pages/basic_page_mixin.dart';
import 'package:centic_bids/core/features/presentation/pages/error_handling_page_mixin.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/bottom_sheet_progress_indicator_helper.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/auctions/auctions_bloc.dart';
import 'package:centic_bids/features/auctions/presentation/widgets/auction_item_tile.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/auctions/bloc.dart';

class AuctionsPage extends BasePage {
  AuctionsPage() {}

  @override
  _AuctionsPageState createState() => _AuctionsPageState();
}

class _AuctionsPageState extends BaseState<AuctionsPage>
    with BasicPage, ErrorHandlingPageMixin {
  final AuctionsBloc auctionsBloc = di<AuctionsBloc>();

  final BottomSheetProgressIndicatorHelper bottomSheetProgressIndicatorHelper =
      di();

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_scrollListener);
    auctionsBloc.add(FetchAuctions());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuctionsBloc, AuctionsState>(
      cubit: auctionsBloc,
      listener: (context, state) {
        if (state is AuctionsInitial) {
          auctionsBloc.add(FetchAuctions());
        }

        state is Loading
            ? bottomSheetProgressIndicatorHelper.showCircularProgressBar(
                parentContext: context)
            : bottomSheetProgressIndicatorHelper
                .hideCircularProgressBar(context);

        if (state is Error) {
          if (isAlive(state.runtimeError, context)) {
            bottomSheetMessageHelper.showMessage(
              type: WidgetType.ERROR,
              message: state.runtimeError.message,
              context: context,
            );
          }
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Container(
            child: ListView.builder(
              itemCount: state.auctionList.length,
              shrinkWrap: true,
              controller: controller,
              itemBuilder: (context, index) {
                return AuctionItemTile(
                  item: AuctionItem.fromJson(state.auctionList[index]?.data(),
                      state.auctionList[index]?.id),
                  onSelectedTileCallback: (auctionItem) =>
                      _onItemSelectedCallback(auctionItem),
                );
              },
            ),
          ),
        );
      },
    ));
  }

  void _scrollListener() {
    if (controller.offset >= controller.position.maxScrollExtent &&
        !controller.position.outOfRange) {
      auctionsBloc.add(FetchAuctions());
    }
  }

  _onItemSelectedCallback(AuctionItem auctionItem) {
    ExtendedNavigator.of(context)
        .pushAuctionDetailPage(auctionItem: auctionItem)
        .then((value) => {auctionsBloc.add(FetchAuctions(shouldReset: true))});
  }
}
