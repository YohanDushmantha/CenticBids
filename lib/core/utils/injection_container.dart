import 'package:centic_bids/core/utils/currency_helper.dart';
import 'package:centic_bids/core/utils/network_info/network_info.dart';
import 'package:centic_bids/core/utils/network_info/network_info_impl.dart';
import 'package:centic_bids/core/utils/shared_pref_helper.dart';
import 'package:centic_bids/core/utils/validator/validator.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'crypto_helper.dart';

Future<void> init(GetIt di) async {
  di.registerLazySingleton(() => Validator());
  di.registerLazySingleton(() => CurrencyHelper());

  di.registerLazySingleton(() => DataConnectionChecker());
  di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));

  final sharedPreferences = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPreferences);

  di.registerLazySingleton(() => SharedPrefHelper(sharedPreferences: di()));
  di.registerLazySingleton(() => CryptoHelper());

  di.registerLazySingleton(() => FlutterLocalNotificationsPlugin());
}
