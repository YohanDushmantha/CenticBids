import 'package:shared_preferences/shared_preferences.dart';

import 'crypto_helper.dart';

class SharedPrefHelper{
  final SharedPreferences sharedPreferences;
  //final CryptoHelper cryptoHelper;
  SharedPrefHelper({this.sharedPreferences});

  save(String key, String value) {
    sharedPreferences.setString(key, value);
  }

  clear(String key){
    sharedPreferences.remove(key);
  }

  clearAll(){
    sharedPreferences.clear();
  }

  retrieve(String key) {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      return jsonString;
    } else {
      return null;
    }
  }
}