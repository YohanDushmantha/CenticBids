import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:flutter/material.dart';

import '../../../../injection_container.dart';

class BottomSheetConfirmMessage extends StatelessWidget {
  final WidgetType type;
  final String title;
  final String message;
  final String positiveBtnTitle;
  final String negativeBtnTitle;
  final Function(bool) onTapSubmitCallback;
  final BuildContext parentContext;
  final BottomSheetConfirmMessageStyles styles = di();
  BottomSheetConfirmMessage(
      {this.type,
      this.title,
      @required this.message,
      this.positiveBtnTitle,
      this.negativeBtnTitle,
      this.onTapSubmitCallback,
      this.parentContext});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      child: Container(
        color: styles.bg,
        padding: const EdgeInsets.all(24.0),
        child: Wrap(
          children: <Widget>[
            Center(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    title != null
                        ? title.toUpperCase()
                        : 'CONFIRMATION MESSAGE',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: styles.bodyTextColor, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                _negativeButton(context),
                SizedBox(
                  width: 16,
                ),
                _positiveButton(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _negativeButton(BuildContext context) {
    return Expanded(
      child: MainBarButton(
          type: WidgetType.INFO,
          title: negativeBtnTitle ?? 'NO',
          onTapCallback: onTapSubmitCallback != null
              ? () {
                  onTapSubmitCallback(false);
                  closeCallback(context);
                }
              : closeCallback),
    );
  }

  Widget _positiveButton(BuildContext context) {
    return Expanded(
      child: MainBarButton(
          type: type,
          title: positiveBtnTitle ?? 'CONFIRM',
          onTapCallback: onTapSubmitCallback != null
              ? () {
                  closeCallback(context);
                  onTapSubmitCallback(true);
                }
              : closeCallback),
    );
  }

  closeCallback(BuildContext context) {
    Navigator.of(context).pop();
  }
}

class BottomSheetConfirmMessageStyles {
  final bg = appColors.offWhite;
  final bodyTextColor = appColors.darkGray;

  config(WidgetType type) {
    // switch(type){
    //   case WidgetType.PRIMARY:
    //     background = appColors.primary;
    //     break;
    //   case WidgetType.INFO:
    //     background = appColors.info;
    //     break;
    //   case WidgetType.WARNING:
    //     background = appColors.warning;
    //     break;
    //   case WidgetType.SUCCESS:
    //     background = appColors.success;
    //     break;
    //   case WidgetType.ERROR:
    //     background = appColors.error;
    //     break;
    // }
  }
}
