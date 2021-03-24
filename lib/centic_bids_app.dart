import 'package:auto_route/auto_route.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/themes/base_theme/base_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/routes/router.gr.dart' as generatedRouter;
import 'package:flutter_localizations/flutter_localizations.dart';

/// @author Yohan Dushmantha
/// Initial widget of the application
/// application theme should be config with theme data

class CenticBidsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Centic Bids',
      debugShowCheckedModeBanner: false,
      theme: BaseTheme.lightTheme,

      builder: (context, child ){
        return MediaQuery(
          child: ExtendedNavigator<generatedRouter.Router>(
            router: generatedRouter.Router(),
          ),
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },

      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        return locale;
      },
    );
  }
}