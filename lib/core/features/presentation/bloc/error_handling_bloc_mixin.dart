import 'package:centic_bids/core/errors/common_failure_messages.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';

class ErrorHandlingBlocMixin{
  RuntimeError mapFailureToRuntimeError(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        // if(failure?.error?.statusMessage == SESSION_EXPIRED || failure?.error?.statusMessage == TOKEN_EXPIRED){
        //   return RuntimeError(message: failure.error.errorMessage ?? SERVER_FAILURE_MESSAGE,isSessionExpired: true);
        // }
        return RuntimeError(message: failure.error.errorMessage ?? SERVER_FAILURE_MESSAGE,isSessionExpired: false);
      case NetworkFailure:
        return RuntimeError(message: failure.error.errorMessage ?? NETWORK_FAILURE_MESSAGE,isSessionExpired: false);
      default:
        return RuntimeError(message: failure.error.errorMessage ?? UNEXPECTED_ERROR,isSessionExpired: false);
    }
  }
}