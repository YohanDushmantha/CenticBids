import 'package:centic_bids/core/service/push_notification_service/push_notification_service.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {
  di.registerLazySingleton(() => PushNotificationService());
}