import 'package:async_redux/async_redux.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';
import 'package:u_win/redux/app_state.dart';
import 'package:u_win/redux/store.dart';
import 'package:u_win/utils/constants.dart';

import '../home/home_screen.dart';
import 'init/init_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  //Set tha navigation key to be used with the store navigator.
  NavigateAction.setNavigatorKey(navigatorKey);

  CatcherOptions debugOptions =
      CatcherOptions(SilentReportMode(), [ConsoleHandler()]);

  Catcher(
      debugConfig: debugOptions,
      runAppFunction: () {
        runApp(MyApp());
      });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AsyncReduxProvider<AppState>.value(
      value: store,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Uwin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          Routes.coupons: (context) => Center(child: Text('Coupons')),
          Routes.home: (context) => HomeScreen(),
        },
        home: InitScreen(),
      ),
    );
  }
}
