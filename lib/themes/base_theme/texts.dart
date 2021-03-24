import 'package:centic_bids/core/errors/exceptions.dart';
import 'package:flutter/material.dart';
import 'fonts.dart' as fonts;
import 'colors.dart' as colors;

final textTheme = TextTheme(
  headline1: TextStyle(
    fontSize: fonts.heading1Size,
    fontWeight: FontWeight.bold,
    color: colors.heading
  ),
  headline2: TextStyle(
      fontSize: fonts.heading2Size,
      fontWeight: FontWeight.bold,
      color: colors.heading
  ),
  headline3: TextStyle(
      fontSize: fonts.heading3Size,
      fontWeight: FontWeight.bold,
      color: colors.heading
  ),
  headline4: TextStyle(
      fontSize: fonts.heading4Size,
      fontWeight: FontWeight.bold,
      color: colors.heading
  ),
  headline5: TextStyle(
      fontSize: fonts.heading5Size,
      fontWeight: FontWeight.bold,
      color: colors.heading
  ),
  headline6: TextStyle(
      fontSize: fonts.heading6Size,
      fontWeight: FontWeight.bold,
      color: colors.heading
  ),
  subtitle1: TextStyle(
      fontSize: fonts.subTitle1Size,
      fontWeight: FontWeight.w500,
      color: colors.subTitle
  ),
  subtitle2: TextStyle(
      fontSize: fonts.subTitle2Size,
      fontWeight: FontWeight.w500,
      color: colors.subTitle
  ),
  bodyText1: TextStyle(
      fontSize: fonts.bodyText1Size,
      fontWeight: FontWeight.normal,
      color: colors.bodyText,
      letterSpacing: 0.5
  ),
  bodyText2: TextStyle(
      fontSize: fonts.bodyText2Size,
      fontWeight: FontWeight.normal,
      color: colors.bodyText,
      letterSpacing: 0.5
  ),
).apply(
  fontFamily: fonts.appPrimaryFontFamily,
  displayColor: colors.heading,
  bodyColor: colors.bodyText,
);

final primaryTextTheme = TextTheme(
  headline6: TextStyle(
    fontFamily: fonts.appPrimaryFontFamily,
    fontSize: fonts.appBarTitleSize,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: colors.appBarTitle,
  )
);