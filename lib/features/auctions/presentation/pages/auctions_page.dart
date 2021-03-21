import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/bottom_sheet_progress_indicator_helper.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/auctions/auctions_bloc.dart';
import 'package:centic_bids/features/auctions/presentation/widgets/auction_item_tile.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:centic_bids/features/auctions/presentation/bloc/auctions/bloc.dart';

class AuctionsPage extends StatefulWidget {

  AuctionsPage() {

  }

  @override
  _AuctionsPageState createState() => _AuctionsPageState();
}

class _AuctionsPageState extends State<AuctionsPage> {
  final AuctionsBloc auctionsBloc = di<AuctionsBloc>();

  final BottomSheetProgressIndicatorHelper bottomSheetProgressIndicatorHelper = di();

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
            if(state is AuctionsInitial){
              print('YD -> auction initial status');
              auctionsBloc.add(FetchAuctions());
            }
            if(state is Loading){
              print('YD -> state is loading');
            }else{
              print('YD -> state is not loading');
            }
            state is Loading
                ? bottomSheetProgressIndicatorHelper.showCircularProgressBar(parentContext: context)
                : bottomSheetProgressIndicatorHelper.hideCircularProgressBar(context);
          },
          builder: (context, state) {
            return SafeArea(
              child: Container(
                child: ListView.builder(
                  itemCount: state.auctionList.length,
                  shrinkWrap: true,
                  controller: controller,
                  itemBuilder: (context, index) {
                    return AuctionItemTile(item: state.auctionList[index]);
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

  getAuctions() {
    auctionsBloc.add(FetchAuctions());
  }
}
