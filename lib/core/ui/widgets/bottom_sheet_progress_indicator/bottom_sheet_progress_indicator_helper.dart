import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/bottom_sheet_progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BottomSheetProgressIndicatorHelper {
  bool isVisibleCircularProgressBar = false;
  showCircularProgressBar(
      {final String loadingText, final BuildContext parentContext}) {
    if (isVisibleCircularProgressBar) {
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        Navigator.pop(parentContext);
      });
    }
    isVisibleCircularProgressBar = true;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: parentContext,
          isDismissible: false,
          enableDrag: false,
          builder: (BuildContext bc) {
            return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: BottomSheetProgressIndicator(
                  parentContext: parentContext, loadingText: loadingText),
            );
          });
    });
  }

  hideCircularProgressBar(BuildContext parentContext) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isVisibleCircularProgressBar) {
        isVisibleCircularProgressBar = false;
        Navigator?.pop(parentContext);
      }
    });
  }
}
