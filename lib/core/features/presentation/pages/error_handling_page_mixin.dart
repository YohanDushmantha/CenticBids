import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:centic_bids/routes/router.gr.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

import 'base_page.dart';

mixin ErrorHandlingPageMixin<Page extends BasePage> on BaseState<Page> {


  bool isAlive(RuntimeError error , BuildContext context){
    if(error.isSessionExpired){
      _expireSession(context);
      return false;
    }
    return true;
  }

  _expireSession(BuildContext context){
    clearLoginDetailsFromCache();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Navigator.of(context).pushNamedAndRemoveUntil(
      //     Routes.splashScreen,
      //         (Route<dynamic> route) => false);
    });
  }

  clearLoginDetailsFromCache(){
    // SharedPrefHelper sharedPrefHelper = sl();
    // final localData = sharedPrefHelper.retrieve(CACHED_AUTH_DATA);
    // print('YD --> clear login details from cache --> existing authData --> ${localData}');
    // if(localData != null){
    //   final authData = AuthData.fromJson(json.decode(localData));
    //   authData.loginData = null;
    //   authData.isSessionKicked = true;
    //   print('YD --> clear login details from cache --> updated authData --> ${authData}');
    //   sharedPrefHelper.save(CACHED_AUTH_DATA, json.encode(authData));
    //   print('YD --> clear login details from cache --> updated local authData --> ${sharedPrefHelper.retrieve(CACHED_AUTH_DATA)}');
    // }
  }
}