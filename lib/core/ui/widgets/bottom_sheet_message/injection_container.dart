import 'package:centic_bids/core/ui/widgets/bottom_sheet_message/bottom_sheet_message.dart';
import 'package:get_it/get_it.dart';

import 'bottom_sheet_message_helper.dart';

Future<void> init(GetIt di) async {
  di.registerLazySingleton(() => BottomSheetMessageHelper());
  di.registerLazySingleton(() => BottomSheetMessageStyles());
}