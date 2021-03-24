import 'package:flutter/material.dart';
import 'colors.dart' as colors;
import 'fonts.dart' as fonts;

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    minimumSize: Size(0, 48.0),
      primary: colors.primaryElevatedButtonBg,
      onPrimary: colors.primaryElevatedButtonTitle,
      elevation: 4,
      textStyle: TextStyle(
        fontSize: fonts.elevatedButtonTextSize,
        fontWeight: FontWeight.bold,
      )
  ),
);
