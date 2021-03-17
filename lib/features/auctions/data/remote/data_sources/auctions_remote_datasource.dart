import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart' as fetchAuctionsUsecase;

abstract class AuctionsRemoteDatasource{
  Future<List<DocumentSnapshot>> fetchAuctions(fetchAuctionsUsecase.Params params);
}