import 'package:centic_bids/core/features/presentation/bloc/runtime_error.dart';
import 'package:flutter/widgets.dart';

import 'base_page.dart';

mixin ErrorHandlingPageMixin<Page extends BasePage> on BaseState<Page> {
  bool isAlive(RuntimeError error, BuildContext context) {
    if (error.isSessionExpired) {
      _expireSession(context);
      return false;
    }
    return true;
  }

  _expireSession(BuildContext context) {
    clearLoginDetailsFromCache();
  }

  clearLoginDetailsFromCache() {}
}
