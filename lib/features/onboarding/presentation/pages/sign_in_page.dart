import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:centic_bids/core/features/presentation/pages/base_page.dart';
import 'package:centic_bids/core/features/presentation/pages/basic_page_mixin.dart';
import 'package:centic_bids/core/features/presentation/pages/error_handling_page_mixin.dart';
import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/text_fields/default_text_field.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/features/onboarding/presentation/bloc/sign_in/bloc.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends BasePage {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends BaseState<SignInPage>
    with BasicPage, ErrorHandlingPageMixin {
  final SignInPageStyle styles = di();
  final SignInBloc signInBloc = di<SignInBloc>();
  final AppStates appStates = di();

  TextEditingController emailFieldController = TextEditingController();
  FocusNode emailFieldFocusNode = FocusNode();
  TextEditingController passwordFieldController = TextEditingController();
  FocusNode passwordFieldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
        cubit: signInBloc,
        listener: (context, state) {
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

          if(state is AuthenticateWithUsernameAndPasswordSuccess){
            appStates.appUser = state.appUser;
            bottomSheetMessageHelper.showMessage(
                type: WidgetType.SUCCESS,
                message: S.of(context).signinSuccessMessage,
                context: context,
                onTapSubmitCallback: () => _onTapSuccessMessageSubmit(context, state.appUser)
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(S.of(context).signInPageTitle),
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

  Widget _body(BuildContext context, SignInState state) {
    return IgnorePointer(
      ignoring: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DefaultTextField(
                textFieldLabel: S.of(context).signInPageEmailFieldLabel,
                textFieldPlaceHolder: '',
                controller: emailFieldController,
                textInputAction: TextInputAction.next,
                focusNode: emailFieldFocusNode,
                nextFocusNode: passwordFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: S.of(context).signInPagePasswordFieldLabel,
                textFieldPlaceHolder: '',
                controller: passwordFieldController,
                textInputAction: TextInputAction.done,
                focusNode: passwordFieldFocusNode,
                isObsecureText: true,
                onSubmitCallback: (text) => _onTapSubmit(context),
              ),
              SizedBox(height: 16,),
              TextButton(onPressed: () => _onTapRegister(context), child: Text(
                  S.of(context).signinRegister,
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
          title: S.of(context).signInPageSubmitBtnTitle,
          onTapCallback: () => _onTapSubmit(context),
        ),
      ),
      elevation: 2,
    );
  }

  _onTapSubmit(BuildContext context) {
    signInBloc.add(AuthenticateWithUsernameAndPasswordEvent(
        context: context,
        email: emailFieldController.text?.trim(),
        password: passwordFieldController?.text?.trim()
    ));
  }

  _onTapRegister(BuildContext context){
    ExtendedNavigator.of(context).pushSignUpPage().then((appUser) => {
      _onTapSuccessMessageSubmit(context, appUser)
    });
  }

  _onTapSuccessMessageSubmit(BuildContext context, AppUser appUser){
    print('YD -> ontap success message inside signin');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if(appUser != null){
        print('YD -> ontap success message inside signin with credentials');
        Navigator.of(context).pop(appUser);
      }
    });


  }
}

class SignInPageStyle {}
