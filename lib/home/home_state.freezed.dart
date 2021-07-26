// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _InitialHomeState initial({int bottomNavigationIndex = 0}) {
    return _InitialHomeState(
      bottomNavigationIndex: bottomNavigationIndex,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get bottomNavigationIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bottomNavigationIndex) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bottomNavigationIndex)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int bottomNavigationIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? bottomNavigationIndex = freezed,
  }) {
    return _then(_value.copyWith(
      bottomNavigationIndex: bottomNavigationIndex == freezed
          ? _value.bottomNavigationIndex
          : bottomNavigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialHomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$InitialHomeStateCopyWith(
          _InitialHomeState value, $Res Function(_InitialHomeState) then) =
      __$InitialHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int bottomNavigationIndex});
}

/// @nodoc
class __$InitialHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialHomeStateCopyWith<$Res> {
  __$InitialHomeStateCopyWithImpl(
      _InitialHomeState _value, $Res Function(_InitialHomeState) _then)
      : super(_value, (v) => _then(v as _InitialHomeState));

  @override
  _InitialHomeState get _value => super._value as _InitialHomeState;

  @override
  $Res call({
    Object? bottomNavigationIndex = freezed,
  }) {
    return _then(_InitialHomeState(
      bottomNavigationIndex: bottomNavigationIndex == freezed
          ? _value.bottomNavigationIndex
          : bottomNavigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InitialHomeState implements _InitialHomeState {
  const _$_InitialHomeState({this.bottomNavigationIndex = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int bottomNavigationIndex;

  @override
  String toString() {
    return 'HomeState.initial(bottomNavigationIndex: $bottomNavigationIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialHomeState &&
            (identical(other.bottomNavigationIndex, bottomNavigationIndex) ||
                const DeepCollectionEquality().equals(
                    other.bottomNavigationIndex, bottomNavigationIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bottomNavigationIndex);

  @JsonKey(ignore: true)
  @override
  _$InitialHomeStateCopyWith<_InitialHomeState> get copyWith =>
      __$InitialHomeStateCopyWithImpl<_InitialHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bottomNavigationIndex) initial,
  }) {
    return initial(bottomNavigationIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bottomNavigationIndex)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bottomNavigationIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHomeState implements HomeState {
  const factory _InitialHomeState({int bottomNavigationIndex}) =
      _$_InitialHomeState;

  @override
  int get bottomNavigationIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialHomeStateCopyWith<_InitialHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
