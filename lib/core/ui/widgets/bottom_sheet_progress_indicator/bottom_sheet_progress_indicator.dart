import 'package:centic_bids/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;

import '../../../../injection_container.dart';

class BottomSheetProgressIndicator extends StatelessWidget{
  final String loadingText;
  final BuildContext parentContext;
  final BottomSheetProgressIndicatoryStyle styles = di();
  BottomSheetProgressIndicator({
    //this.key,
    this.loadingText, this.parentContext});
  //: super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0))),
      child: Wrap(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  loadingText ?? S.of(context).loading,
                  style: Theme.of(context).textTheme.headline3.copyWith(color: appColors.darkGray),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all( 16),
                child: Center(
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: CircularProgressIndicator(
                      backgroundColor: styles.spinnerAccentColor,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          styles.spinnerColor),
                    ),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

class BottomSheetProgressIndicatoryStyle{
  final spinnerColor = appColors.green;
  final spinnerAccentColor = appColors.darkGray;
}