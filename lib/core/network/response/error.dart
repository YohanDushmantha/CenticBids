import 'package:equatable/equatable.dart';

class Error extends Equatable {
  final String errorMessage;

  Error({this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
