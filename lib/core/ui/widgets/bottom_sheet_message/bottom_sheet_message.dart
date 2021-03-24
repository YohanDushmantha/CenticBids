import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:flutter/material.dart';

class BottomSheetMessage extends StatelessWidget {
  final BottomSheetMessageStyles styles = di();
  final WidgetType type;
  final String title;

  final String message;
  final String sumbitButtonTitle;
  final Function onTapSubmitCallback;
  final BuildContext parentContext;
  final bool isDismissible;

  BottomSheetMessage(
      {this.title,
      @required this.type,
      @required this.message,
      this.sumbitButtonTitle,
      this.onTapSubmitCallback,
      this.parentContext,
      this.isDismissible});

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
            isDismissible == true
                ? Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                : Container(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                    child: Text(
                  _getTitle(context, title),
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                )),
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
            _submitButton(context)
          ],
        ),
      ),
    );
  }

  String _getTitle(BuildContext context, String title) {
    if (title != null && title.isNotEmpty) {
      return title;
    } else {
      switch (type) {
        case WidgetType.PRIMARY:
          return S.of(context).primaryMessageTitle;
        case WidgetType.INFO:
          return S.of(context).infoMessageTitle;
        case WidgetType.WARNING:
          return S.of(context).warningMessageTitle;
        case WidgetType.SUCCESS:
          return S.of(context).successMessageTitle;
        case WidgetType.ERROR:
          return S.of(context).errorMessageTitle;
      }
    }
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: MainBarButton(
          type: type,
          title: sumbitButtonTitle ?? S.of(context).messageSubmitBtnTitle,
          onTapCallback: onTapSubmitCallback != null
              ? () {
                  onTapSubmitCallback();
                  closeCallback();
                }
              : closeCallback),
    );
  }

  closeCallback() {
    Navigator.pop(parentContext);
  }
}

class BottomSheetMessageStyles {
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
