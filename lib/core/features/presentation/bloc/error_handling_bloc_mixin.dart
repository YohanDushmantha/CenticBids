import 'package:centic_bids/core/errors/common_failure_messages.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';

class ErrorHandlingBlocMixin {
  RuntimeError mapFailureToRuntimeError(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return RuntimeError(
            message: failure.error.errorMessage ?? SERVER_FAILURE_MESSAGE,
            isSessionExpired: false);
      case NetworkFailure:
        return RuntimeError(
            message: failure.error.errorMessage ?? NETWORK_FAILURE_MESSAGE,
            isSessionExpired: false);
      default:
        return RuntimeError(
            message: failure.error.errorMessage ?? UNEXPECTED_ERROR,
            isSessionExpired: false);
    }
  }
}
