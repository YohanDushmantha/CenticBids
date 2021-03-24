import '../validation_config.dart';

class RequiredValidationConfig extends ValidationConfig {
  RequiredValidationConfig({
    String customErrorMessage,
    String customSuccessMessage,
    bool successMessageIsRequired,
  }) : super(
            customErrorMessage: customErrorMessage,
            customSuccessMessage: customSuccessMessage,
            successMessageIsRequired: successMessageIsRequired);

  @override
  List<Object> get props => super.props;
}
