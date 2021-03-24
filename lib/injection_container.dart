import 'package:get_it/get_it.dart';
import 'package:centic_bids/features/injection_container.dart' as featuresDi;
import 'package:centic_bids/core/injection_container.dart' as coreDi;

final di = GetIt.instance;

Future<void> init() async {
  //features
  featuresDi.init(di);

  //core
  coreDi.init(di);
}