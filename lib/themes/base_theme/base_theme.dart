import 'package:flutter/material.dart';
import 'colors.dart' as colors;
import 'buttons.dart' as buttons;
import 'cards.dart' as cards;
import 'app_bar.dart' as appBar;
import 'texts.dart' as texts;

class BaseTheme {
  static ThemeData get lightTheme {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
        primaryColor: colors.primary,
        accentColor: colors.accent,

        scaffoldBackgroundColor: colors.scaffoldBg,

        elevatedButtonTheme: buttons.elevatedButtonThemeData,

        cardTheme: cards.cardTheme,
        cardColor: colors.cardColor,

        errorColor: colors.error,

        appBarTheme: appBar.appBarTheme,

        textTheme: texts.textTheme,
        primaryTextTheme: texts.primaryTextTheme
    );
  }
}
