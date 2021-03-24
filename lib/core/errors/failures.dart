import 'package:equatable/equatable.dart';
import 'package:centic_bids/core/network/response/error.dart';

abstract class Failure extends Equatable {
  Error error;

  Failure(this.error);

  @override
  List<Object> get props => [error];
}

// General Failures
class ServerFailure extends Failure {
  ServerFailure(Error error) : super(error);
}

class ValidationFailure extends Failure {
  ValidationFailure(Error error) : super(error);
}

class CacheFailure extends Failure {
  CacheFailure(Error error) : super(error);
}

class NetworkFailure extends Failure {
  NetworkFailure(Error error) : super(error);
}

class PlatformFailure extends Failure {
  PlatformFailure(Error error) : super(error);
}
