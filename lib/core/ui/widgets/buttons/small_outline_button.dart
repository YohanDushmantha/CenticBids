import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;

import '../../../../injection_container.dart';

class SmallOutlineButton extends StatelessWidget {
  final WidgetType type;
  final String title;
  final Function onTapCallback;
  final TextStyle textStyle;
  final SmallOutlineButtonStyle styles = di();

  SmallOutlineButton(
      {this.type = WidgetType.PRIMARY,
      @required this.title,
      @required this.onTapCallback,
      this.textStyle})
      : assert(title != null) {
    styles.config(type);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: styles.buttonHeight,
      child: OutlinedButton(
        onPressed: () {
          onTapCallback();
        },
        style: OutlinedButton.styleFrom(
            primary: styles.foreground,
            backgroundColor: styles.background,
            side: BorderSide(
                color: styles.borderColor, width: styles.borderWidth)),
        child: Text(title ?? S.of(context).mainBarBtnDefaultTitle),
      ),
    );
  }
}

class SmallOutlineButtonStyle {
  final buttonHeight = 24.0;
  final cornerRadius = 2.0;
  var borderColor = appColors.darkBlue;
  final borderWidth = 2.0;
  final background = appColors.white;
  var foreground = appColors.darkBlue;

  config(WidgetType type) {
    switch (type) {
      case WidgetType.PRIMARY:
        foreground = appColors.primary;
        borderColor = appColors.primary;
        break;
      case WidgetType.INFO:
        foreground = appColors.info;
        borderColor = appColors.info;
        break;
      case WidgetType.WARNING:
        foreground = appColors.warning;
        borderColor = appColors.warning;
        break;
      case WidgetType.SUCCESS:
        foreground = appColors.success;
        borderColor = appColors.success;
        break;
      case WidgetType.ERROR:
        foreground = appColors.error;
        borderColor = appColors.error;
        break;
    }
  }
}
