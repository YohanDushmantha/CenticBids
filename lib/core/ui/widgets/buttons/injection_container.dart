import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/buttons/rounded_icon_outline_button.dart';
import 'package:centic_bids/core/ui/widgets/buttons/small_outline_button.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {
  di.registerFactory(() => MainBarButtonStyles());
  di.registerFactory(() => SmallOutlineButtonStyle());
  di.registerFactory(() => RoundedIconOutlineButtonStyle());
}