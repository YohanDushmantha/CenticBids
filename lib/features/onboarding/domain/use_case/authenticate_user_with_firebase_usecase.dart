import 'package:centic_bids/core/errors/failures.dart';
import 'package:centic_bids/core/usecase/usecase.dart';
import 'package:centic_bids/core/utils/validator/validation_configs/email_validation_config.dart';
import 'package:centic_bids/core/utils/validator/validation_configs/required_validation_config.dart';
import 'package:centic_bids/core/utils/validator/validation_field.dart';
import 'package:centic_bids/core/utils/validator/validation_result.dart';
import 'package:centic_bids/core/utils/validator/validator.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/features/onboarding/domain/repositories/firebase_auth_repository.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:centic_bids/core/network/response/error.dart';

class SignInWithEmailAndPasswordUseCase extends UseCase<AppUser, Params>{
  final FirebaseAuthRepository repository;
  final Validator validator;

  SignInWithEmailAndPasswordUseCase({this.repository, this.validator});

  @override
  Future<Either<Failure, AppUser>> call(Params params) async{
    final validationResult = await validate(params);
    if(validationResult.isValid){
      return repository.signInWithEmailAndPassword(params);
    }else{
      return Left(ValidationFailure(Error(errorMessage: validationResult.message)));
    }
  }

  Future<ValidationResult> validate(Params params) async{
    List<ValidationField> validationFieldList = [
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
          ]),
    ];

    return validator.validateFields(validationFieldList, params.context);
  }

}

class Params extends Equatable{
  final String email;
  final String password;
  final BuildContext context;

  Params({@required this.context ,@required this.email, @required this.password});

  @override
  List<Object> get props => [context, email,password];
}