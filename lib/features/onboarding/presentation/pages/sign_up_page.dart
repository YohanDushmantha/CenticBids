import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:centic_bids/core/features/presentation/pages/base_page.dart';
import 'package:centic_bids/core/features/presentation/pages/basic_page_mixin.dart';
import 'package:centic_bids/core/features/presentation/pages/error_handling_page_mixin.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/text_fields/default_text_field.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/features/home/presentation/bloc/home_state.dart';
import 'package:centic_bids/features/onboarding/presentation/bloc/sign_up/bloc.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

class SignUpPage extends BasePage {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends BaseState<SignUpPage>
    with BasicPage, ErrorHandlingPageMixin  {
  final SignUpPageStyle styles = di();
  final SignUpBloc signUpBloc = di<SignUpBloc>();
  final AppStates appStates = di();

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
      listener: (context, state){
        state is Loading
            ? bottomSheetProgressIndicatorHelper.showCircularProgressBar(parentContext: context)
            : bottomSheetProgressIndicatorHelper.hideCircularProgressBar(context);


        if(state is Error){
          if (isAlive(state.runtimeError, context)) {
            bottomSheetMessageHelper.showMessage(
              type: WidgetType.ERROR,
              message: state.runtimeError.message,
              context: context,
            );
          }
        }

        if(state is RegisterUserWithUsernameAndPasswordSuccess){
          appStates.userCredential = state.userCredential;
          bottomSheetMessageHelper.showMessage(
              type: WidgetType.SUCCESS,
              message: S.of(context).signupSuccessMessage,
            context: context,
            onTapSubmitCallback: () => _onTapSuccessMessageSubmit(context, state.userCredential)
          );
        }
      },
      builder: (context, state){
       return Scaffold(
         appBar: AppBar(
           title: Text(S.of(context).signUpPageTitle),
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
      }
    );
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

              TextButton(onPressed: () => _onTapAlreadyHaveAnAccount(context), child: Text(
                S.of(context).signupAlreadyHaveAnAccount,
                style: TextStyle(
                  fontSize: 18
                ),
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
      email: emailFieldController.text?.trim(),
      password: passwordFieldController?.text?.trim(),
      retypePassword: retypePasswordFieldController?.text?.trim()
    ));
  }

  _onTapAlreadyHaveAnAccount(BuildContext context) async{
    //ExtendedNavigator.of(context).pop();
    ExtendedNavigator.of(context).pushSignInPage().then(
            (userCredential) => {
          //if(userCredential != null){
            _returnFromSignInPage(userCredential)
          //}
        }
    );
  }

  _returnFromSignInPage(dynamic credential){
    print('YD -> return from signin page');
    if(credential != null){
      print('YD -> return from signin page not null');
      ExtendedNavigator.of(context).pop(credential);
    }
  }


  _onTapSuccessMessageSubmit(BuildContext context, UserCredential credential){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ExtendedNavigator.of(context).pop(credential);
    });

  }
}

class SignUpPageStyle {}