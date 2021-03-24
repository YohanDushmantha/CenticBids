import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:flutter/material.dart';

class MainBarButton extends StatelessWidget {
  final WidgetType type;
  final String title;
  final Function onTapCallback;
  final TextStyle textStyle;
  final MainBarButtonStyles styles = di();

  MainBarButton(
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
      child: ElevatedButton(
        onPressed: () {
          onTapCallback();
        },
        style: ElevatedButton.styleFrom(
          primary: styles.background,
          onPrimary: styles.foreground,
        ),
        child: Text(title ?? S.of(context).mainBarBtnDefaultTitle),
      ),
    );
  }
}

class MainBarButtonStyles {
  final buttonHeight = 48.0;
  final cornerRadius = 6.0;
  final borderColor = Colors.transparent;
  final borderWidth = 1.0;
  var background = appColors.darkBlue;
  final foreground = appColors.white;

  config(WidgetType type) {
    switch (type) {
      case WidgetType.PRIMARY:
        background = appColors.primary;
        break;
      case WidgetType.INFO:
        background = appColors.info;
        break;
      case WidgetType.WARNING:
        background = appColors.warning;
        break;
      case WidgetType.SUCCESS:
        background = appColors.success;
        break;
      case WidgetType.ERROR:
        background = appColors.error;
        break;
    }
  }
}
