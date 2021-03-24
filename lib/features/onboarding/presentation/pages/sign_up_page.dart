import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/utils/shared_pref_helper.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/core/features/presentation/pages/base_page.dart';
import 'package:centic_bids/core/features/presentation/pages/basic_page_mixin.dart';
import 'package:centic_bids/core/features/presentation/pages/error_handling_page_mixin.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/text_fields/default_text_field.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/features/onboarding/presentation/bloc/sign_up/bloc.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

class SignUpPage extends BasePage {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends BaseState<SignUpPage>
    with BasicPage, ErrorHandlingPageMixin {
  final SignUpPageStyle styles = di();
  final SignUpBloc signUpBloc = di<SignUpBloc>();
  final AppStates appStates = di();
  final SharedPrefHelper sharedPrefHelper = di();

  TextEditingController firstNameFieldController = TextEditingController();
  FocusNode firstNameFieldFocusNode = FocusNode();
  TextEditingController lastNameFieldController = TextEditingController();
  FocusNode lastNameFieldFocusNode = FocusNode();
  TextEditingController emailFieldController = TextEditingController();
  FocusNode emailFieldFocusNode = FocusNode();
  TextEditingController passwordFieldController = TextEditingController();
  FocusNode passwordFieldFocusNode = FocusNode();
  TextEditingController retypePasswordFieldController = TextEditingController();
  FocusNode retypePasswordFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
        cubit: signUpBloc,
        listener: (context, state) {
          state is Loading
              ? bottomSheetProgressIndicatorHelper.showCircularProgressBar(
                  parentContext: context)
              : bottomSheetProgressIndicatorHelper
                  .hideCircularProgressBar(context);

          if (state is Error) {
            if (isAlive(state.runtimeError, context)) {
              bottomSheetMessageHelper.showMessage(
                type: WidgetType.ERROR,
                message: state.runtimeError.message,
                context: context,
              );
            }
          }

          if (state is RegisterUserWithUsernameAndPasswordSuccess) {
            appStates.appUser = state.appUser;
            bottomSheetMessageHelper.showMessage(
                type: WidgetType.SUCCESS,
                message: S.of(context).signupSuccessMessage,
                context: context,
                onTapSubmitCallback: () =>
                    _onTapSuccessMessageSubmit(context, state.appUser));
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(S.of(context).signUpPageTitle),
              brightness: Brightness.dark,
            ),
            body: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  FocusManager.instance.primaryFocus.unfocus();
                },
                child: _body(context, state)),
            bottomNavigationBar: _submitBtn(context),
          );
        });
  }

  Widget _body(BuildContext context, SignUpState state) {
    return IgnorePointer(
      ignoring: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DefaultTextField(
                textFieldLabel: S.of(context).signUpPageFirstNameFieldLabel,
                textFieldPlaceHolder: '',
                controller: firstNameFieldController,
                textInputAction: TextInputAction.next,
                focusNode: firstNameFieldFocusNode,
                nextFocusNode: lastNameFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: S.of(context).signUpPageLastNameFieldLabel,
                textFieldPlaceHolder: '',
                controller: lastNameFieldController,
                textInputAction: TextInputAction.next,
                focusNode: lastNameFieldFocusNode,
                nextFocusNode: emailFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: S.of(context).signUpPageEmailFieldLabel,
                textFieldPlaceHolder: '',
                controller: emailFieldController,
                textInputAction: TextInputAction.next,
                focusNode: emailFieldFocusNode,
                nextFocusNode: passwordFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: S.of(context).signUpPagePasswordFieldLabel,
                textFieldPlaceHolder: '',
                controller: passwordFieldController,
                textInputAction: TextInputAction.next,
                focusNode: passwordFieldFocusNode,
                nextFocusNode: retypePasswordFieldFocusNode,
                isObsecureText: true,
              ),
              DefaultTextField(
                textFieldLabel: S.of(context).signupPageRetypePasswordLabel,
                textFieldPlaceHolder: '',
                controller: retypePasswordFieldController,
                textInputAction: TextInputAction.next,
                focusNode: retypePasswordFieldFocusNode,
                onSubmitCallback: (text) => _onTapSubmit(context),
                isObsecureText: true,
              ),
              TextButton(
                  onPressed: () => _onTapAlreadyHaveAnAccount(context),
                  child: Text(
                    S.of(context).signupAlreadyHaveAnAccount,
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _submitBtn(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: MainBarButton(
          title: S.of(context).signUpPageSubmitBtnTitle,
          onTapCallback: () => _onTapSubmit(context),
        ),
      ),
      elevation: 2,
    );
  }

  _onTapSubmit(BuildContext context) {
    signUpBloc.add(RegisterUserWithUsernameAndPasswordEvent(
        context: context,
        firstName: firstNameFieldController.text?.trim(),
        lastName: lastNameFieldController.text?.trim(),
        email: emailFieldController.text?.trim(),
        password: passwordFieldController?.text?.trim(),
        retypePassword: retypePasswordFieldController?.text?.trim()));
  }

  _onTapAlreadyHaveAnAccount(BuildContext context) async {
    ExtendedNavigator.of(context).pop();
  }

  _onTapSuccessMessageSubmit(BuildContext context, AppUser appUser) async {
    sharedPrefHelper.save('loggedInUser', json.encode(appUser.toJson()));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ExtendedNavigator.of(context).pop(appUser);
    });
  }
}

class SignUpPageStyle {}
