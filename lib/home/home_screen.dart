import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';

import '../utils/widgets/app_layout_widget.dart';
import '../redux/app_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ReduxConsumer(
      builder: _buildContent,
    );
  }

  Widget _buildContent(BuildContext context, Store<AppState> store,
      AppState state, Dispatch dispatch, Widget? child) {
    return AppLayoutWidget(
      pageTitle: 'uWin',
      child: _getCurrentScreen(state.homeState.bottomNavigationIndex),
    );
  }

  Widget _getCurrentScreen(int index) {
    switch (index) {
      case 0:
        {
          return Center(
            child: Text('Coupons'),
          );
        }
      case 1:
        {
          return Center(
            child: Text('Events'),
          );
        }
      case 2:
        {
          return Center(
            child: Text('News'),
          );
        }
      case 3:
        {
          return Center(
            child: Text('Settings'),
          );
        }
      default:
        {
          return Container();
        }
    }
  }
}
