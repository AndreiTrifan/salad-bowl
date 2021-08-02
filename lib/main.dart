import 'package:async_redux/async_redux.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';
import 'package:u_win/utils/standards/standard_image.dart';
import 'package:u_win/utils/standards/standard_list_tile.dart';

import './home/home_screen.dart';
import './init/init_screen.dart';
import './redux/app_state.dart';
import './redux/store.dart';
import './utils/constants.dart';

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
        // home: InitScreen(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('title'),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      StandardListTile(
                        title: 'hello',
                        onTap: () {},
                      ),
                      StandardListTile(
                        title: 'good',
                        onTap: () {},
                        leading: StandardImage(
                            url:
                                'https://upload.wikimedia.org/wikipedia/commons/8/8f/The_Sirens_and_Ulysses_by_William_Etty%2C_1837.jpg'),
                        trailing: 'hello',
                      ),
                      StandardListTile(
                        title: 'hello',
                        onTap: () {},
                        trailing: StandardImage(
                            url:
                                'https://upload.wikimedia.org/wikipedia/commons/8/8f/The_Sirens_and_Ulysses_by_William_Etty%2C_1837.jpg'),
                      ),
                      StandardListTile(
                        title: 'hello',
                        onTap: () {},
                        trailing: ' me',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
