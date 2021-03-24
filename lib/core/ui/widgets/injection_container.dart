import 'package:get_it/get_it.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_progress_indicator/injection_container.dart' as bottomSheetProgressIndicatorHelperDi;
import 'package:centic_bids/core/ui/widgets/buttons/injection_container.dart' as buttonDi;
import 'package:centic_bids/core/ui/widgets/bottom_sheet_message/injection_container.dart' as bottomSheetMessageDi;
import 'package:centic_bids/core/ui/widgets/bottom_sheet_confirm_message/injection_container.dart' as bottomSheetConfirmMessageDi;
import 'package:centic_bids/core/ui/widgets/text_fields/injection_container.dart' as textFieldDi;

Future<void> init(GetIt di) async {
  bottomSheetProgressIndicatorHelperDi.init(di);
  buttonDi.init(di);
  bottomSheetMessageDi.init(di);
  bottomSheetConfirmMessageDi.init(di);
  textFieldDi.init(di);
}