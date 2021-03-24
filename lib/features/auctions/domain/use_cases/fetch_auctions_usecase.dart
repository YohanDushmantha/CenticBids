import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/usecase/usecase.dart';
import 'package:centic_bids/features/auctions/domain/repositories/auctions_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class FetchAuctionsUsecase extends UseCase<List<DocumentSnapshot>, Params> {
  final AuctionsRepository repository;

  FetchAuctionsUsecase({this.repository});

  @override
  Future<Either<Failure, List<DocumentSnapshot>>> call(Params params) async {
    return await repository.fetchAuctions(params);
  }
}

class Params extends Equatable {
  final DocumentSnapshot startDocument;
  final int limit;

  Params({@required this.startDocument, this.limit = 10});

  @override
  List<Object> get props => [startDocument, limit];
}
