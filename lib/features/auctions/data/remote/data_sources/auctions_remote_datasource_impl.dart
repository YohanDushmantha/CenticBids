import 'package:centic_bids/features/auctions/data/remote/data_sources/auctions_remote_datasource.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart' as fetchAuctionsUsecase;
import 'package:centic_bids/features/auctions/domain/use_cases/bid_now_usecase.dart' as bidNowUsecase;

class AuctionsRemoteDatasourceImpl extends AuctionsRemoteDatasource{
  @override
  Future<List<DocumentSnapshot>> fetchAuctions(fetchAuctionsUsecase.Params params) async {
    QuerySnapshot querySnapshot = null;
    if(params.startDocument != null){
      querySnapshot = await FirebaseFirestore.instance
          .collection('auctions')
          .startAfterDocument(params.startDocument)
          .limit(params.limit)
          .get();
    }else{
      querySnapshot = await FirebaseFirestore.instance
          .collection('auctions')
          .limit(params.limit)
          .get();
    }

    return querySnapshot.docs;

    // if(querySnapshot == null){
    //   return null;
    // }
    //
    //
    // List<DocumentSnapshot> auctionItems = [];
    // querySnapshot?.docs?.forEach((element) {
    //   element.reference?.get();
    //   //auctionItems.add(AuctionItem.fromJson(element.data(), element.id));
    // });
    //
    // return auctionItems;
  }

  @override
  Future<Bid> createBid(bidNowUsecase.Params params)async{
  try{
    Query query = await FirebaseFirestore.instance?.collection('bids')
        ?.where('uid', isEqualTo: params?.uid)
        ?.where('auctionId', isEqualTo: params?.auctionId);
    if(query == null){
      print('YD -> Query == null');
      return null;
    }

    List<QueryDocumentSnapshot> bidsQuerySnapshots = await query.get()?.then((querySnapshot) => querySnapshot.docs);

    if(bidsQuerySnapshots != null && bidsQuerySnapshots.length > 0){
      print('YD -> Bids already exits');

      QueryDocumentSnapshot bidsQuery = bidsQuerySnapshots?.first;


      await FirebaseFirestore?.instance?.collection('bids')
          ?.doc(bidsQuery.id)
          ?.update({'biddingAmount': params.biddingAmount});

      await FirebaseFirestore?.instance?.collection('auctions')
          ?.doc(params.auctionId)
          ?.update({'latest_price': params.biddingAmount});

      return Bid.fromJson(bidsQuery.data(), bidsQuery.id);

    }else {
      print('YD -> No Bids Found');

      DocumentReference documentReference = await FirebaseFirestore.instance?.collection('bids')?.add(Bid(
          auctionId: params.auctionId,
          uid: params.uid,
          biddingAmount: params.biddingAmount
      ).toJson());
      if(documentReference?.id != null && documentReference?.id != ''){
        DocumentSnapshot documentSnapshot = await documentReference.get();
        if(documentSnapshot != null){

          await FirebaseFirestore?.instance?.collection('auctions')
              ?.doc(params.auctionId)
              ?.update({'latest_price': params.biddingAmount});

          return Bid.fromJson(documentSnapshot.data(), documentSnapshot.id);
        }
        return null;
      }else{
        return null;
      }
    }


  } on Exception{
    return null;
  }

  }
  
}