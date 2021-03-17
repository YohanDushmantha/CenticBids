import 'package:centic_bids/features/auctions/data/remote/data_sources/auctions_remote_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart' as fetchAuctionsUsecase;

class AuctionsRemoteDatasourceImpl extends AuctionsRemoteDatasource{
  @override
  Future<List<DocumentSnapshot>> fetchAuctions(fetchAuctionsUsecase.Params params) async {
    QuerySnapshot result = null;
    if(params.startDocument != null){
      result = await FirebaseFirestore.instance
          .collection('auctions')
          .startAfterDocument(params.startDocument)
          .limit(params.limit)
          .get();
    }else{
      result = await FirebaseFirestore.instance
          .collection('auctions')
          .limit(params.limit)
          .get();
    }


    return result.docs;
  }
  
}