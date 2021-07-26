import 'package:freezed_annotation/freezed_annotation.dart';

import '../home/home_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState{
  const factory AppState.initial({
    @Default(HomeState.initial()) HomeState homeState,
  }) = _InitialAppState;
}