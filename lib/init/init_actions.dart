
import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:u_win/redux/app_state.dart';
import 'package:u_win/utils/constants.dart';

class InitializeApplication extends ReduxAction<AppState> {

  @override
  AppState? reduce() {
     //TODO Do something here.
    return null;
  }

  @override
  void after() {
    store.dispatch(NavigateAction.pushReplacementNamed(Routes.home));
    super.after();
  }

}