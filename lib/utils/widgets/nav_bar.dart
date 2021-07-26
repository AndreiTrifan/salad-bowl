import 'package:flutter/material.dart';
import 'package:provider_for_redux/provider_for_redux.dart';

import '../../utils/standards/style_standards.dart';
import '../../home/home_actions.dart';
import '../../redux/app_state.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReduxSelector<AppState, int>(
      selector: (context, state) {
        return state.homeState.bottomNavigationIndex;
      },
      builder: (context, store, state, dispatch, int? model, child) {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (index) =>
              dispatch(SwitchCurrentNavigationIndexAction(index: index)),
          currentIndex: state.homeState.bottomNavigationIndex,
          unselectedItemColor: StandardColors.standardDarkGrey,
          selectedItemColor: StandardColors.standardLightBlue,
          selectedLabelStyle: StandardTextStyles.caption1.regular
              .copyWith(color: StandardColors.standardLightBlue),
          unselectedLabelStyle: StandardTextStyles.caption1.regular
              .copyWith(color: StandardColors.standardDarkGrey),
          iconSize: StandardIconSize(context).normalIcon,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Acasă'),
            BottomNavigationBarItem(
                icon: Icon(Icons.event),
                label: 'Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded),
                label: 'Proiecte'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setări'),
          ],
        );
      },
    );
  }
}
