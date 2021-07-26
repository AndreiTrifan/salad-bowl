// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _InitialAppState initial({HomeState homeState = const HomeState.initial()}) {
    return _InitialAppState(
      homeState: homeState,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  HomeState get homeState => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeState homeState) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeState homeState)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAppState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({HomeState homeState});

  $HomeStateCopyWith<$Res> get homeState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? homeState = freezed,
  }) {
    return _then(_value.copyWith(
      homeState: homeState == freezed
          ? _value.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as HomeState,
    ));
  }

  @override
  $HomeStateCopyWith<$Res> get homeState {
    return $HomeStateCopyWith<$Res>(_value.homeState, (value) {
      return _then(_value.copyWith(homeState: value));
    });
  }
}

/// @nodoc
abstract class _$InitialAppStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$InitialAppStateCopyWith(
          _InitialAppState value, $Res Function(_InitialAppState) then) =
      __$InitialAppStateCopyWithImpl<$Res>;
  @override
  $Res call({HomeState homeState});

  @override
  $HomeStateCopyWith<$Res> get homeState;
}

/// @nodoc
class __$InitialAppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitialAppStateCopyWith<$Res> {
  __$InitialAppStateCopyWithImpl(
      _InitialAppState _value, $Res Function(_InitialAppState) _then)
      : super(_value, (v) => _then(v as _InitialAppState));

  @override
  _InitialAppState get _value => super._value as _InitialAppState;

  @override
  $Res call({
    Object? homeState = freezed,
  }) {
    return _then(_InitialAppState(
      homeState: homeState == freezed
          ? _value.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as HomeState,
    ));
  }
}

/// @nodoc

class _$_InitialAppState implements _InitialAppState {
  const _$_InitialAppState({this.homeState = const HomeState.initial()});

  @JsonKey(defaultValue: const HomeState.initial())
  @override
  final HomeState homeState;

  @override
  String toString() {
    return 'AppState.initial(homeState: $homeState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialAppState &&
            (identical(other.homeState, homeState) ||
                const DeepCollectionEquality()
                    .equals(other.homeState, homeState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homeState);

  @JsonKey(ignore: true)
  @override
  _$InitialAppStateCopyWith<_InitialAppState> get copyWith =>
      __$InitialAppStateCopyWithImpl<_InitialAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeState homeState) initial,
  }) {
    return initial(homeState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeState homeState)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(homeState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAppState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAppState implements AppState {
  const factory _InitialAppState({HomeState homeState}) = _$_InitialAppState;

  @override
  HomeState get homeState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialAppStateCopyWith<_InitialAppState> get copyWith =>
      throw _privateConstructorUsedError;
}
