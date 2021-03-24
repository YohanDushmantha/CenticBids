import 'package:centic_bids/core/ui/widgets/bottom_sheet_confirm_message/bottom_sheet_confirm_message_helper.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_message/bottom_sheet_message_helper.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/bottom_sheet_progress_indicator_helper.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

abstract class BasePage extends StatefulWidget{
  BasePage({Key key}) : super(key : key);
}

abstract class BaseState<Page extends BasePage> extends State<Page>{
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final BottomSheetMessageHelper bottomSheetMessageHelper = di();
  final BottomSheetConfirmMessageHelper bottomSheetConfirmMessageHelper = di();
  final BottomSheetProgressIndicatorHelper bottomSheetProgressIndicatorHelper = di();

  Future<bool> onWillPop() async {
    if (Navigator.canPop(context)) {
      return true;
    } else {
      bottomSheetConfirmMessageHelper.showMessage(
        type: WidgetType.ERROR,
          title: S.of(context).appExitMessageTitle,
          message: S.of(context).appExitMessageDetail,
          positiveBtnTitle: S.of(context).appExitPositiveBtnText.toUpperCase(),
          onTapSubmitCallback: (value) {
            if (value == true) {
              SchedulerBinding.instance.addPostFrameCallback((_) {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              });
            }
          },
          context: context);
    }
  }

}