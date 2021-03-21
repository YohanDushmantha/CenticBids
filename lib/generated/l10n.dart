// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LOADING`
  String get loading {
    return Intl.message(
      'LOADING',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Auction`
  String get auctionPageTitle {
    return Intl.message(
      'Auction',
      name: 'auctionPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `My Biddings`
  String get myBiddingsPageTitle {
    return Intl.message(
      'My Biddings',
      name: 'myBiddingsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get accountPageTitle {
    return Intl.message(
      'Account',
      name: 'accountPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Base Price`
  String get basePrice {
    return Intl.message(
      'Base Price',
      name: 'basePrice',
      desc: '',
      args: [],
    );
  }

  /// `Latest Price`
  String get latestPrice {
    return Intl.message(
      'Latest Price',
      name: 'latestPrice',
      desc: '',
      args: [],
    );
  }

  /// `VIEW MORE`
  String get viewMore {
    return Intl.message(
      'VIEW MORE',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `Auction Detail`
  String get auctionDetailPageTitle {
    return Intl.message(
      'Auction Detail',
      name: 'auctionDetailPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `BID`
  String get bid {
    return Intl.message(
      'BID',
      name: 'bid',
      desc: '',
      args: [],
    );
  }

  /// `Information Message`
  String get infoMessageTitle {
    return Intl.message(
      'Information Message',
      name: 'infoMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get primaryMessageTitle {
    return Intl.message(
      'Message',
      name: 'primaryMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Error Message`
  String get errorMessageTitle {
    return Intl.message(
      'Error Message',
      name: 'errorMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Success Message`
  String get successMessageTitle {
    return Intl.message(
      'Success Message',
      name: 'successMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Warning Message`
  String get warningMessageTitle {
    return Intl.message(
      'Warning Message',
      name: 'warningMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get messageSubmitBtnTitle {
    return Intl.message(
      'OK',
      name: 'messageSubmitBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInPageTitle {
    return Intl.message(
      'Sign In',
      name: 'signInPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get signInPageSubmitBtnTitle {
    return Intl.message(
      'SIGN IN',
      name: 'signInPageSubmitBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signInPageEmailFieldLabel {
    return Intl.message(
      'Email',
      name: 'signInPageEmailFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signInPagePasswordFieldLabel {
    return Intl.message(
      'Password',
      name: 'signInPagePasswordFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `User log in to the application successfully`
  String get signinSuccessMessage {
    return Intl.message(
      'User log in to the application successfully',
      name: 'signinSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get signinRegister {
    return Intl.message(
      'Create Account',
      name: 'signinRegister',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUpPageTitle {
    return Intl.message(
      'Sign Up',
      name: 'signUpPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `SIGN UP`
  String get signUpPageSubmitBtnTitle {
    return Intl.message(
      'SIGN UP',
      name: 'signUpPageSubmitBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signUpPageEmailFieldLabel {
    return Intl.message(
      'Email',
      name: 'signUpPageEmailFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signUpPagePasswordFieldLabel {
    return Intl.message(
      'Password',
      name: 'signUpPagePasswordFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Retype Password`
  String get signupPageRetypePasswordLabel {
    return Intl.message(
      'Retype Password',
      name: 'signupPageRetypePasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `User is registered successfully`
  String get signupSuccessMessage {
    return Intl.message(
      'User is registered successfully',
      name: 'signupSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signupAlreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'signupAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `{fieldName} can not be empty`
  String validationIsRequired(Object fieldName) {
    return Intl.message(
      '$fieldName can not be empty',
      name: 'validationIsRequired',
      desc: '',
      args: [fieldName],
    );
  }

  /// `{fieldName} is not a valid number`
  String validationIsNumber(Object fieldName) {
    return Intl.message(
      '$fieldName is not a valid number',
      name: 'validationIsNumber',
      desc: '',
      args: [fieldName],
    );
  }

  /// `{fieldName} is not a valid email`
  String validationIsEmail(Object fieldName) {
    return Intl.message(
      '$fieldName is not a valid email',
      name: 'validationIsEmail',
      desc: '',
      args: [fieldName],
    );
  }

  /// `Password is not matched with confirm password.`
  String get validationPasswordNotEqualsToConfirmPassword {
    return Intl.message(
      'Password is not matched with confirm password.',
      name: 'validationPasswordNotEqualsToConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `{fieldName} length should be greater than {requiredMinLength}`
  String validationMinLengthRequired(Object fieldName, Object requiredMinLength) {
    return Intl.message(
      '$fieldName length should be greater than $requiredMinLength',
      name: 'validationMinLengthRequired',
      desc: '',
      args: [fieldName, requiredMinLength],
    );
  }

  /// `{fieldName} length should be less than {requiredMaxLength}`
  String validationMaxLengthRequired(Object fieldName, Object requiredMaxLength) {
    return Intl.message(
      '$fieldName length should be less than $requiredMaxLength',
      name: 'validationMaxLengthRequired',
      desc: '',
      args: [fieldName, requiredMaxLength],
    );
  }

  /// `Email is not valid`
  String get validationEmailNotValid {
    return Intl.message(
      'Email is not valid',
      name: 'validationEmailNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number is not valid`
  String get validationPhoneNumberNotValid {
    return Intl.message(
      'Phone Number is not valid',
      name: 'validationPhoneNumberNotValid',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}