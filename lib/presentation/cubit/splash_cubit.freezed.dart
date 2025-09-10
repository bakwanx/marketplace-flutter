// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SplashState {
  Exception? get error => throw _privateConstructorUsedError;
  dynamic get isFirstTime => throw _privateConstructorUsedError;
  dynamic get isLogin => throw _privateConstructorUsedError;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
    SplashState value,
    $Res Function(SplashState) then,
  ) = _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({Exception? error, dynamic isFirstTime, dynamic isLogin});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isFirstTime = freezed,
    Object? isLogin = freezed,
  }) {
    return _then(
      _value.copyWith(
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as Exception?,
            isFirstTime:
                freezed == isFirstTime
                    ? _value.isFirstTime
                    : isFirstTime // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            isLogin:
                freezed == isLogin
                    ? _value.isLogin
                    : isLogin // ignore: cast_nullable_to_non_nullable
                        as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
    _$SplashStateImpl value,
    $Res Function(_$SplashStateImpl) then,
  ) = __$$SplashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exception? error, dynamic isFirstTime, dynamic isLogin});
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
    _$SplashStateImpl _value,
    $Res Function(_$SplashStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isFirstTime = freezed,
    Object? isLogin = freezed,
  }) {
    return _then(
      _$SplashStateImpl(
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as Exception?,
        isFirstTime: freezed == isFirstTime ? _value.isFirstTime! : isFirstTime,
        isLogin: freezed == isLogin ? _value.isLogin! : isLogin,
      ),
    );
  }
}

/// @nodoc

class _$SplashStateImpl extends _SplashState {
  const _$SplashStateImpl({
    this.error,
    this.isFirstTime = false,
    this.isLogin = false,
  }) : super._();

  @override
  final Exception? error;
  @override
  @JsonKey()
  final dynamic isFirstTime;
  @override
  @JsonKey()
  final dynamic isLogin;

  @override
  String toString() {
    return 'SplashState(error: $error, isFirstTime: $isFirstTime, isLogin: $isLogin)';
  }

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);
}

abstract class _SplashState extends SplashState {
  const factory _SplashState({
    final Exception? error,
    final dynamic isFirstTime,
    final dynamic isLogin,
  }) = _$SplashStateImpl;
  const _SplashState._() : super._();

  @override
  Exception? get error;
  @override
  dynamic get isFirstTime;
  @override
  dynamic get isLogin;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
