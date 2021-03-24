// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(fieldName) => "${fieldName} is not a valid email";

  static m1(fieldName) => "${fieldName} is not a valid number";

  static m2(fieldName) => "${fieldName} can not be empty";

  static m3(fieldName, requiredMaxLength) => "${fieldName} length should be less than ${requiredMaxLength}";

  static m4(fieldName, requiredMinLength) => "${fieldName} length should be greater than ${requiredMinLength}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "accountPageTitle" : MessageLookupByLibrary.simpleMessage("Account"),
    "appExitMessageDetail" : MessageLookupByLibrary.simpleMessage("Do you want to exit the app?"),
    "appExitMessageTitle" : MessageLookupByLibrary.simpleMessage("Are You Sure?"),
    "appExitPositiveBtnText" : MessageLookupByLibrary.simpleMessage("Yes"),
    "auctionDetailPageTitle" : MessageLookupByLibrary.simpleMessage("Auction Detail"),
    "auctionPageTitle" : MessageLookupByLibrary.simpleMessage("Auction"),
    "basePrice" : MessageLookupByLibrary.simpleMessage("Base Price"),
    "bid" : MessageLookupByLibrary.simpleMessage("BID"),
    "biddingBidNowBtnTitle" : MessageLookupByLibrary.simpleMessage("BID NOW"),
    "biddingCloseBtnTitle" : MessageLookupByLibrary.simpleMessage("NOT NOW"),
    "biddingPageTitle" : MessageLookupByLibrary.simpleMessage("Bid Now"),
    "biddingSuccessMessage" : MessageLookupByLibrary.simpleMessage("You have made a bid successfully"),
    "countDownSoldOut" : MessageLookupByLibrary.simpleMessage("Sold Out"),
    "errorMessageTitle" : MessageLookupByLibrary.simpleMessage("Error Message"),
    "infoMessageTitle" : MessageLookupByLibrary.simpleMessage("Information Message"),
    "latestPrice" : MessageLookupByLibrary.simpleMessage("Latest Price"),
    "loading" : MessageLookupByLibrary.simpleMessage("LOADING"),
    "mainBarBtnDefaultTitle" : MessageLookupByLibrary.simpleMessage("SUBMIT"),
    "messageSubmitBtnTitle" : MessageLookupByLibrary.simpleMessage("OK"),
    "myBiddingsPageTitle" : MessageLookupByLibrary.simpleMessage("My Biddings"),
    "primaryMessageTitle" : MessageLookupByLibrary.simpleMessage("Message"),
    "profileSignOut" : MessageLookupByLibrary.simpleMessage("Sign Out"),
    "profileYouAreNotSignedIn" : MessageLookupByLibrary.simpleMessage("You are not signed in"),
    "signInPageEmailFieldLabel" : MessageLookupByLibrary.simpleMessage("Email"),
    "signInPagePasswordFieldLabel" : MessageLookupByLibrary.simpleMessage("Password"),
    "signInPageSubmitBtnTitle" : MessageLookupByLibrary.simpleMessage("SIGN IN"),
    "signInPageTitle" : MessageLookupByLibrary.simpleMessage("Sign In"),
    "signUpPageEmailFieldLabel" : MessageLookupByLibrary.simpleMessage("Email"),
    "signUpPageFirstNameFieldLabel" : MessageLookupByLibrary.simpleMessage("First Name"),
    "signUpPageLastNameFieldLabel" : MessageLookupByLibrary.simpleMessage("Last Name"),
    "signUpPagePasswordFieldLabel" : MessageLookupByLibrary.simpleMessage("Password"),
    "signUpPageSubmitBtnTitle" : MessageLookupByLibrary.simpleMessage("SIGN UP"),
    "signUpPageTitle" : MessageLookupByLibrary.simpleMessage("Sign Up"),
    "signinRegister" : MessageLookupByLibrary.simpleMessage("Create Account"),
    "signinSuccessMessage" : MessageLookupByLibrary.simpleMessage("User log in to the application successfully"),
    "signoutSuccessMessage" : MessageLookupByLibrary.simpleMessage("You are successfully Sign out"),
    "signupAlreadyHaveAnAccount" : MessageLookupByLibrary.simpleMessage("Already have an account?"),
    "signupPageRetypePasswordLabel" : MessageLookupByLibrary.simpleMessage("Retype Password"),
    "signupSuccessMessage" : MessageLookupByLibrary.simpleMessage("User is registered successfully"),
    "successMessageTitle" : MessageLookupByLibrary.simpleMessage("Success Message"),
    "validationEmailNotValid" : MessageLookupByLibrary.simpleMessage("Email is not valid"),
    "validationIsEmail" : m0,
    "validationIsNumber" : m1,
    "validationIsRequired" : m2,
    "validationMaxLengthRequired" : m3,
    "validationMinLengthRequired" : m4,
    "validationPasswordNotEqualsToConfirmPassword" : MessageLookupByLibrary.simpleMessage("Password is not matched with confirm password."),
    "validationPhoneNumberNotValid" : MessageLookupByLibrary.simpleMessage("Phone Number is not valid"),
    "viewMore" : MessageLookupByLibrary.simpleMessage("VIEW MORE"),
    "warningMessageTitle" : MessageLookupByLibrary.simpleMessage("Warning Message"),
    "youAreNotSignedIn" : MessageLookupByLibrary.simpleMessage("You are not signed in")
  };
}
