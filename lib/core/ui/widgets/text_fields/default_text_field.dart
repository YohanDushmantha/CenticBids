import 'dart:io';

import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:centic_bids/themes/app_fonts.dart' as appFonts;

import '../../../../injection_container.dart';

class DefaultTextField extends StatelessWidget {
  final WidgetType type;
  final String textFieldLabel;
  final String textFieldPlaceHolder;
  final Padding labelPadding;
  final BorderRadius textFieldBorderRadius;
  final double textFieldHeight;
  final int charactorCount;
  final int maxLines;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final Function(String) onSubmitCallback;
  final Function() onTapCallback;
  final bool readOnly;
  final List<TextInputFormatter> inputFormatters;
  final Padding textFieldPadding;
  final TextInputType keyBoardType;
  final bool shouldShowBadge;
  final Color badgeColor;
  final String checkVerified;
  final bool isObsecureText;
  final String prefixText;
  final bool isAutoFocus;

  final DefaultTextFieldStyle styles = di();

  DefaultTextField(
      {Key key,
      this.textFieldLabel,
      this.textFieldPlaceHolder,
      this.labelPadding,
      this.textFieldBorderRadius,
      this.textFieldHeight,
      this.charactorCount,
      this.maxLines,
      this.controller,
      this.textInputAction,
      this.focusNode,
      this.nextFocusNode,
      this.onSubmitCallback,
      this.onTapCallback,
      this.readOnly,
      this.inputFormatters,
      this.textFieldPadding,
      this.keyBoardType,
      this.shouldShowBadge,
      this.badgeColor,
      this.checkVerified,
      this.isObsecureText,
      this.prefixText,
      this.isAutoFocus,
      this.type})
      : super(key: key) {
    styles.config(type);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _label(context),
        Container(
            padding: EdgeInsets.only(
                left: prefixText != null && prefixText != '' ? 16 : 4,
                right: 4,
                bottom: charactorCount != null ? 16 : 0),
            decoration: BoxDecoration(
                border: Border.all(color: styles.borderColor, width: 1.0),
                borderRadius: BorderRadius.circular(4),
                color: styles.fieldBgColor),
            height: charactorCount != null
                ? (textFieldHeight != null
                    ? (textFieldHeight + 22.0)
                    : (styles.textFieldHeight + 22.0))
                : textFieldHeight ?? styles.textFieldHeight,
            child: _field(context)),
      ],
    );
  }

  _label(BuildContext context) {
    return Padding(
      padding: labelPadding != null
          ? labelPadding
          : EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
        children: <Widget>[
          Text(
            textFieldLabel,
            style: Theme.of(context).textTheme.headline3.copyWith(
                fontWeight: FontWeight.w500, color: styles.labelTextColor),
          ),
        ],
      ),
    );
  }

  _field(BuildContext context) {
    return TextFormField(
      keyboardType: Platform.isIOS
          ? TextInputType.text
          : keyBoardType ?? TextInputType.text,
      cursorColor: styles.cursorColor,
      controller: controller,
      maxLength: charactorCount,
      maxLines: maxLines ?? 1,
      style: TextStyle(
          fontFamily: styles.fieldFontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 20,
          color: styles.fieldTextColor,
          letterSpacing: 1,
          decoration: TextDecoration.none),
      textInputAction: textInputAction ?? TextInputAction.next,
      focusNode: focusNode ?? FocusNode(),
      onTap: onTapCallback,
      readOnly: readOnly != null ? readOnly : false,
      onFieldSubmitted: (value) {
        if (textInputAction == TextInputAction.next &&
            focusNode != null &&
            nextFocusNode != null) {
          _fieldFocusChange(context, focusNode, nextFocusNode);
        } else {
          SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
            FocusScope.of(context).unfocus();
          });
          if (onSubmitCallback != null) {
            onSubmitCallback(value);
          }
        }
      },
      inputFormatters: inputFormatters ?? [],
      obscureText: isObsecureText ?? false,
      autofocus: isAutoFocus ?? false,
      decoration: InputDecoration(border: InputBorder.none),
    );
  }

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}

class DefaultTextFieldStyle {
  final textFieldHeight = 50.0;
  final borderColor = appColors.lightGray;
  final labelTextColor = appColors.darkGray;
  final fieldBgColor = appColors.white;
  final fieldTextColor = appColors.black;
  final cursorColor = appColors.primary;
  final fieldFontFamily = appFonts.roboto;

  config(WidgetType type) {}
}
