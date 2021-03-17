import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet_message.dart';

class BottomSheetMessageHelper {
  showMessage({
    @required WidgetType type,String title,
    String message,
    String sumbitButtonTitle,
    Function onTapSubmitCallback,
    BuildContext context,
    bool isDismissible,
    bool isDraggable
}
      ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
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
              child: BottomSheetMessage(
                type: type,
                title: title,
                message: message,
                sumbitButtonTitle: sumbitButtonTitle,
                onTapSubmitCallback: onTapSubmitCallback,
                parentContext: context,
                isDismissible: isDismissible ?? false,
              ),
            );
          });
    });
  }
}