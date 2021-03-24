import 'package:centic_bids/core/ui/widgets/bottom_sheet_confirm_message/bottom_sheet_confirm_message.dart';
import 'package:centic_bids/core/ui/widgets/bottom_sheet_confirm_message/bottom_sheet_confirm_message_helper.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {
  di.registerFactory(() => BottomSheetConfirmMessageStyles());
  di.registerLazySingleton(() => BottomSheetConfirmMessageHelper());
}