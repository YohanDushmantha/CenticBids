import 'package:equatable/equatable.dart';

class ValidationResult extends Equatable {
  final bool isValid;
  final String message;

  ValidationResult({this.isValid, this.message});

  @override
  List<Object> get props => [isValid, message];
}
