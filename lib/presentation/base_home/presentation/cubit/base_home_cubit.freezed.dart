// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BaseHomeState {
  Exception? get error => throw _privateConstructorUsedError;
  int get indexPage => throw _privateConstructorUsedError;
  List<Widget> get pages => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Create a copy of BaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseHomeStateCopyWith<BaseHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseHomeStateCopyWith<$Res> {
  factory $BaseHomeStateCopyWith(
    BaseHomeState value,
    $Res Function(BaseHomeState) then,
  ) = _$BaseHomeStateCopyWithImpl<$Res, BaseHomeState>;
  @useResult
  $Res call({
    Exception? error,
    int indexPage,
    List<Widget> pages,
    bool loading,
  });
}

/// @nodoc
class _$BaseHomeStateCopyWithImpl<$Res, $Val extends BaseHomeState>
    implements $BaseHomeStateCopyWith<$Res> {
  _$BaseHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? indexPage = null,
    Object? pages = null,
    Object? loading = null,
  }) {
    return _then(
      _value.copyWith(
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as Exception?,
            indexPage:
                null == indexPage
                    ? _value.indexPage
                    : indexPage // ignore: cast_nullable_to_non_nullable
                        as int,
            pages:
                null == pages
                    ? _value.pages
                    : pages // ignore: cast_nullable_to_non_nullable
                        as List<Widget>,
            loading:
                null == loading
                    ? _value.loading
                    : loading // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res>
    implements $BaseHomeStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
    _$SplashStateImpl value,
    $Res Function(_$SplashStateImpl) then,
  ) = __$$SplashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Exception? error,
    int indexPage,
    List<Widget> pages,
    bool loading,
  });
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$BaseHomeStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
    _$SplashStateImpl _value,
    $Res Function(_$SplashStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? indexPage = null,
    Object? pages = null,
    Object? loading = null,
  }) {
    return _then(
      _$SplashStateImpl(
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as Exception?,
        indexPage:
            null == indexPage
                ? _value.indexPage
                : indexPage // ignore: cast_nullable_to_non_nullable
                    as int,
        pages:
            null == pages
                ? _value._pages
                : pages // ignore: cast_nullable_to_non_nullable
                    as List<Widget>,
        loading:
            null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SplashStateImpl extends _SplashState {
  _$SplashStateImpl({
    this.error,
    this.indexPage = 0,
    final List<Widget> pages = const [],
    this.loading = false,
  }) : _pages = pages,
       super._();

  @override
  final Exception? error;
  @override
  @JsonKey()
  final int indexPage;
  final List<Widget> _pages;
  @override
  @JsonKey()
  List<Widget> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'BaseHomeState(error: $error, indexPage: $indexPage, pages: $pages, loading: $loading)';
  }

  /// Create a copy of BaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);
}

abstract class _SplashState extends BaseHomeState {
  factory _SplashState({
    final Exception? error,
    final int indexPage,
    final List<Widget> pages,
    final bool loading,
  }) = _$SplashStateImpl;
  _SplashState._() : super._();

  @override
  Exception? get error;
  @override
  int get indexPage;
  @override
  List<Widget> get pages;
  @override
  bool get loading;

  /// Create a copy of BaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
