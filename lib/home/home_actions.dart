
import 'package:async_redux/async_redux.dart';
import 'package:u_win/redux/app_state.dart';

class SwitchCurrentNavigationIndexAction extends ReduxAction<AppState> {

  int index;

  SwitchCurrentNavigationIndexAction({required this.index});

  @override
  AppState reduce() {
    return state.copyWith.homeState.call(
      bottomNavigationIndex: index,
    );
  }
}