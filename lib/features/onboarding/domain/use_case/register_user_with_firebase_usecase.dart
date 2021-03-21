//import 'package:centic_bids/core/errors/common_failure_messages.dart';
import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/usecase/usecase.dart';
import 'package:centic_bids/core/utils/validator/validation_configs/email_validation_config.dart';
import 'package:centic_bids/core/utils/validator/validation_configs/password_match_validation_config.dart';
import 'package:centic_bids/core/utils/validator/validation_configs/required_validation_config.dart';
import 'package:centic_bids/core/utils/validator/validation_field.dart';
import 'package:centic_bids/core/utils/validator/validation_result.dart';
import 'package:centic_bids/core/utils/validator/validator.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/features/onboarding/domain/repositories/firebase_auth_repository.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:centic_bids/core/network/response/error.dart';

class RegisterUserWithFirebaseUseCase extends UseCase<AppUser, Params>{

  final FirebaseAuthRepository repository;
  final Validator validator;

  RegisterUserWithFirebaseUseCase({this.repository, this.validator});

  @override
  Future<Either<Failure, AppUser>> call(Params params) async {
    final validationResult = await validate(params);
    if(validationResult.isValid){
      return repository.createUserWithEmailAndPassword(params);
    }else{
      return Left(ValidationFailure(Error(errorMessage: validationResult.message)));
    }
  }

  Future<ValidationResult> validate(Params params) async{
    List<ValidationField> validationFieldList = [
      ValidationField(
          fieldName: S.of(params.context).signUpPageFirstNameFieldLabel,
          value: params?.firstName?.trim(),
          validationConfigList: [
            RequiredValidationConfig(),
          ]),
      ValidationField(
          fieldName: S.of(params.context).signUpPageLastNameFieldLabel,
          value: params?.lastName?.trim(),
          validationConfigList: [
            RequiredValidationConfig(),
          ]),
      ValidationField(
          fieldName: S.of(params.context).signUpPageEmailFieldLabel,
          value: params?.email?.trim(),
          validationConfigList: [
            RequiredValidationConfig(),
            EmailValidationConfig()
          ]),
      ValidationField(
          fieldName: S.of(params.context).signUpPagePasswordFieldLabel,
          value: params?.password?.trim(),
          validationConfigList: [
            RequiredValidationConfig(),
            PasswordMatchValidationConfig(confirmPassword: params?.retypePassword?.trim())
          ]),
    ];

    return validator.validateFields(validationFieldList, params.context);
  }
  
}

class Params extends Equatable{
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String retypePassword;
  final BuildContext context;

  Params({@required this.context ,@required this.firstName, @required this.lastName,@required this.email, @required this.password, @required this.retypePassword});

  @override
  List<Object> get props => [context, firstName, lastName, email,password, retypePassword];
}