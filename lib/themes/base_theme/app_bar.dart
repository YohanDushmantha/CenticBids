
import 'package:centic_bids/themes/base_theme/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'fonts.dart' as fonts;


const appBarTheme = AppBarTheme(
  elevation: 4,
  centerTitle: true,
  iconTheme: IconThemeData(
    color: colors.appBarIcon,
    size: fonts.appBarIconSize
  ),
  backgroundColor: colors.appBarBg,
  brightness: Brightness.light,

);