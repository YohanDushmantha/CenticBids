import 'package:bloc/bloc.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/error_handling_bloc_mixin.dart';
import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:centic_bids/features/auctions/domain/entities/bid.dart';
import 'package:centic_bids/features/auctions/domain/use_cases/bid_now_usecase.dart';
import 'package:dartz/dartz.dart';
import 'bidding_state.dart';
import 'bloc.dart';

class BiddingBloc extends Bloc<BiddingEvent, BiddingState>
    with ErrorHandlingBlocMixin {
  int biddingAmount = 0;
  int latestBid = 0;
  final BidNowUsecase bidNowUsecase;
  BiddingBloc({this.bidNowUsecase})
      : super(BiddingInitialState(biddingAmount: 0));

  @override
  Stream<BiddingState> mapEventToState(
    BiddingEvent event,
  ) async* {
    if (event is SetBiddingAmount) {
      yield Loading(biddingAmount);
      latestBid = event.latestBid ?? 0.0;
      biddingAmount = event.biddingAmount ?? 0.0;
      yield IncrementedState(biddingAmount: biddingAmount);
    } else if (event is IncrementEvent) {
      yield Loading(biddingAmount);
      biddingAmount = biddingAmount + 1;
      yield IncrementedState(biddingAmount: biddingAmount);
    } else if (event is DecrementEvent) {
      yield Loading(biddingAmount);
      if (biddingAmount > latestBid) {
        biddingAmount = biddingAmount - 1;
        yield DecrementedState(biddingAmount: biddingAmount);
      } else {
        yield BiddingError(
            biddingAmount: biddingAmount,
            runtimeError: RuntimeError(
                message: 'Bid amount should be greater than to latest bid.'));
      }
    } else if (event is BidNowEvent) {
      yield LoadingBidNow(biddingAmount);
      final failureOrCreated = await bidNowUsecase(Params(
          uid: event.appUser?.uid,
          biddingAmount: biddingAmount,
          auctionId: event?.auction?.id,
          auctionItem: event?.auction));
      yield* _eitherCreatedBidOrError(failureOrCreated);
    }
  }

  Stream<BiddingState> _eitherCreatedBidOrError(
      Either<Failure, Bid> either) async* {
    yield either.fold(
        (failure) => BiddingError(
            biddingAmount: biddingAmount,
            runtimeError: mapFailureToRuntimeError(failure)),
        (bid) => LoadedBidNow(bid: bid));
  }
}
