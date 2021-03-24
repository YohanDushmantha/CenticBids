import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/core/states/app_states.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_message/bottom_sheet_message_helper.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/core/utils/shared_pref_helper.dart';
import 'package:centic_bids/features/home/presentation/bloc/bloc.dart';
import 'package:centic_bids/features/home/presentation/bloc/home_bloc.dart';
import 'package:centic_bids/features/onboarding/domain/entities/app_user.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;

class ProfilePage extends StatelessWidget {
  AppStates appStates = di();
  ProfilePageStyles styles = di();
  SharedPrefHelper sharedPrefHelper = di();
  BottomSheetMessageHelper bottomSheetMessageHelper = di();
  HomeBloc homeBloc = di();
  final Function(int) stateUpdateCallback;

  ProfilePage({this.stateUpdateCallback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: appStates?.appUser != null
          ? _authenticated(context, appStates.appUser)
          : _notAuthenticated(context),
    ));
  }

  Widget _notAuthenticated(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Card(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                child: Center(
                    child: Text(
                  S.of(context).youAreNotSignedIn,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: styles.notAuthenticatedTextColor,
                      fontWeight: FontWeight.w500),
                ))),
          ),
          SizedBox(
            height: 24,
          ),
          TextButton(
              onPressed: () => _onTapSignIn(context),
              child: Text(
                S.of(context).signupAlreadyHaveAnAccount,
                style: TextStyle(fontSize: 18),
              )),
          TextButton(
              onPressed: () => _onTapSignUp(context),
              child: Text(
                S.of(context).signinRegister,
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }

  Widget _authenticated(BuildContext context, AppUser appUser) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getDataCard(context, S.of(context).signUpPageFirstNameFieldLabel,
              appUser.firstName),
          _getDataCard(context, S.of(context).signUpPageLastNameFieldLabel,
              appUser.lastName),
          _getDataCard(
              context, S.of(context).signUpPageEmailFieldLabel, appUser.email),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: TextButton(
                onPressed: () => _onTapSignOut(context),
                child: Text(
                  S.of(context).profileSignOut,
                  style: TextStyle(fontSize: 18),
                )),
          )
        ],
      ),
    );
  }

  Widget _getDataCard(BuildContext context, String label, String value) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.headline3.copyWith(),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.bodyText1.copyWith(),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onTapSignIn(BuildContext context) {
    ExtendedNavigator.of(context)
        .pushSignInPage()
        .then((appUser) => {_onTapSuccessCallbackButton(context, appUser)});
  }

  _onTapSuccessCallbackButton(BuildContext context, AppUser appUser) {
    if (appUser != null) {
      appStates.appUser = appUser;
      stateUpdateCallback(0);
    }
  }

  _onTapSignUp(BuildContext context) {
    ExtendedNavigator.of(context).pushSignUpPage();
  }

  _onTapSignOut(BuildContext context) {
    sharedPrefHelper.clearAll();
    appStates.appUser = null;
    bottomSheetMessageHelper.showMessage(
        type: WidgetType.WARNING,
        message: S.of(context).signoutSuccessMessage,
        onTapSubmitCallback: () => _onTapSignOutCallbackButton(context),
        context: context);
  }

  _onTapSignOutCallbackButton(BuildContext context) {
    stateUpdateCallback(0);
  }
}

class ProfilePageStyles {
  final notAuthenticatedTextColor = appColors.error;
}
