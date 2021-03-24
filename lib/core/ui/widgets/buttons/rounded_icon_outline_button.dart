import 'package:flutter/material.dart';

import '../../../../injection_container.dart';
import '../widget_type.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;

class RoundedIconOutlineButton extends StatelessWidget {
  final WidgetType type;
  final IconData iconData;
  final Function onTapCallback;
  final Function onTapUpCallback;
  final RoundedIconOutlineButtonStyle styles = di();

  RoundedIconOutlineButton(
      {this.type = WidgetType.PRIMARY,
      @required this.iconData,
      @required this.onTapCallback,
      this.onTapUpCallback})
      : assert(iconData != null) {
    styles.config(type);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: styles.buttonHeight,
      width: styles.buttonHeight,
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              border: Border.all(
                  width: styles.borderWidth, color: styles.borderColor)),
          child: Icon(
            iconData,
            size: 24,
            color: styles.borderColor,
          ),
        ),
        onTapDown: (TapDownDetails details) {
          onTapCallback();
        },
        onTapUp: (TapUpDetails details) {
          onTapUpCallback();
        },
        onTapCancel: () {
          onTapUpCallback();
        },
      ),
    );
  }
}

class RoundedIconOutlineButtonStyle {
  final buttonHeight = 48.0;
  final cornerRadius = 24.0;
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
