import 'package:get_it/get_it.dart';
import 'package:centic_bids/core/ui/injection_container.dart' as uiDi;
import 'package:centic_bids/core/utils/injection_container.dart' as utilsDi;
import 'package:centic_bids/core/states/injection_container.dart' as statesDi;
import 'package:centic_bids/core/service/injection_container.dart' as servicesDi;

Future<void> init(GetIt di) async {
  uiDi.init(di);
  utilsDi.init(di);
  statesDi.init(di);
  servicesDi.init(di);

}