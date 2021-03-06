import 'package:centic_bids/features/auctions/data/remote/data_sources/auctions_remote_datasource.dart';
import 'package:centic_bids/features/auctions/domain/entities/auction_item.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart'
    as fetchAuctionsUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/bid_now_usecase.dart'
    as bidNowUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auction_usecase.dart'
    as fetchAuctionUsecase;

class AuctionsRemoteDatasourceImpl extends AuctionsRemoteDatasource {
  @override
  Future<List<DocumentSnapshot>> fetchAuctions(
      fetchAuctionsUsecase.Params params) async {
    QuerySnapshot querySnapshot = null;
    if (params.startDocument != null) {
      querySnapshot = await FirebaseFirestore.instance
          .collection('auctions')
          .startAfterDocument(params.startDocument)
          .limit(params.limit)
          .get();
    } else {
      querySnapshot = await FirebaseFirestore.instance
          .collection('auctions')
          .limit(params.limit)
          .get();
    }

    return querySnapshot.docs;
  }

  @override
  Future<Bid> createBid(bidNowUsecase.Params params) async {
    try {
      Query query = await FirebaseFirestore.instance
          ?.collection('bids')
          ?.where('uid', isEqualTo: params?.uid)
          ?.where('auctionId', isEqualTo: params?.auctionId);
      if (query == null) {
        return null;
      }

      List<QueryDocumentSnapshot> bidsQuerySnapshots =
          await query.get()?.then((querySnapshot) => querySnapshot.docs);

      if (bidsQuerySnapshots != null && bidsQuerySnapshots.length > 0) {
        QueryDocumentSnapshot bidsQuery = bidsQuerySnapshots?.first;

        await FirebaseFirestore?.instance
            ?.collection('bids')
            ?.doc(bidsQuery.id)
            ?.update({'biddingAmount': params.biddingAmount});

        await FirebaseFirestore?.instance
            ?.collection('auctions')
            ?.doc(params.auctionId)
            ?.update({'latest_price': params.biddingAmount});

        return Bid.fromJson(bidsQuery.data(), bidsQuery.id);
      } else {
        DocumentReference documentReference = await FirebaseFirestore.instance
            ?.collection('bids')
            ?.add(Bid(
                    auctionId: params.auctionId,
                    uid: params.uid,
                    biddingAmount: params.biddingAmount)
                .toJson());
        if (documentReference?.id != null && documentReference?.id != '') {
          DocumentSnapshot documentSnapshot = await documentReference.get();
          if (documentSnapshot != null) {
            await FirebaseFirestore?.instance
                ?.collection('auctions')
                ?.doc(params.auctionId)
                ?.update({'latest_price': params.biddingAmount});

            return Bid.fromJson(documentSnapshot.data(), documentSnapshot.id);
          }
          return null;
        } else {
          return null;
        }
      }
    } on Exception {
      return null;
    }
  }

  @override
  Future<AuctionItem> fetchAuction(fetchAuctionUsecase.Params params) async {
    DocumentSnapshot auctionSnapshot = await FirebaseFirestore?.instance
        ?.collection('auctions')
        ?.doc(params.auctionId)
        ?.get();
    if (auctionSnapshot != null) {
      return await AuctionItem?.fromJson(
          auctionSnapshot.data(), auctionSnapshot.id);
    } else {
      return null;
    }
  }
}
