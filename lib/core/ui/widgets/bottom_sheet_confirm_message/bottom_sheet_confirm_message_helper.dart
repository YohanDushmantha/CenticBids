import 'package:centic_bids/core/ui/widgets/bottom_sheet_confirm_message/bottom_sheet_confirm_message.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomSheetConfirmMessageHelper {
  showMessage({
    WidgetType type,
    String title,
    String message,
    String positiveBtnTitle,
    String negativeBtnTitle,
    Function(bool) onTapSubmitCallback,
    BuildContext context,
    bool isDismissible,
    bool isDraggable,
  }) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isDismissible: isDismissible ?? false,
        enableDrag: isDraggable ?? false,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(isDismissible ?? false);
            },
            child: BottomSheetConfirmMessage(
              type: type,
              title: title,
              message: message,
              positiveBtnTitle: positiveBtnTitle,
              negativeBtnTitle: negativeBtnTitle,
              onTapSubmitCallback: onTapSubmitCallback,
              parentContext: context,
            ),
          );
        });
  }
}
