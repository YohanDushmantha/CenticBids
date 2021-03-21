import 'package:centic_bids/core/utils/validator/validation_config.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ValidationField extends Equatable{
  final String fieldName;
  final String value;
  final List<ValidationConfig> validationConfigList;

  ValidationField({@required this.fieldName, @required this.value, @required this.validationConfigList});

  @override
  List<Object> get props => [fieldName,value,validationConfigList];
}