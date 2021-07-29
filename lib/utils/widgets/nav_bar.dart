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
          backgroundColor: StandardColors.standardWhite,
          onTap: (index) =>
              dispatch(SwitchCurrentNavigationIndexAction(index: index)),
          currentIndex: state.homeState.bottomNavigationIndex,
          unselectedItemColor: StandardColors.standardDarkGrey,
          selectedItemColor: StandardColors.standardRed,
          selectedLabelStyle: StandardTextStyles.caption1.regular
              .copyWith(color: StandardColors.standardRed),
          unselectedLabelStyle: StandardTextStyles.caption1.regular
              .copyWith(color: StandardColors.standardDarkGrey),
          iconSize: StandardIconSize(context).normalIcon,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: StandardIconSize(context).normalIcon,),
                label: 'Acasă'),
            BottomNavigationBarItem(
                icon: Icon(Icons.event, size: StandardIconSize(context).normalIcon,),
                label: 'Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded, size: StandardIconSize(context).normalIcon,),
                label: 'Proiecte'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: StandardIconSize(context).normalIcon,),
                label: 'Setări'),
          ],
        );
      },
    );
  }
}
