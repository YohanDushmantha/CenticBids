import 'package:centic_bids/core/errors/failures.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/fetch_auctions_usecase.dart' as fetchAuctionsUsecase;

abstract class AuctionsRepository{
  Future<Either<Failure, List<DocumentSnapshot>>> fetchAuctions(fetchAuctionsUsecase.Params params);
}