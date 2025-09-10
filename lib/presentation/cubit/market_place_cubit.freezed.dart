// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_place_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MarketPlaceState {
  Exception? get error => throw _privateConstructorUsedError;
  List<ProductEntity> get productServices => throw _privateConstructorUsedError;
  List<ProductEntity> get productEntities => throw _privateConstructorUsedError;
  int get filterCount => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of MarketPlaceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketPlaceStateCopyWith<MarketPlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketPlaceStateCopyWith<$Res> {
  factory $MarketPlaceStateCopyWith(
    MarketPlaceState value,
    $Res Function(MarketPlaceState) then,
  ) = _$MarketPlaceStateCopyWithImpl<$Res, MarketPlaceState>;
  @useResult
  $Res call({
    Exception? error,
    List<ProductEntity> productServices,
    List<ProductEntity> productEntities,
    int filterCount,
    bool loading,
    bool hasNextPage,
    int page,
  });
}

/// @nodoc
class _$MarketPlaceStateCopyWithImpl<$Res, $Val extends MarketPlaceState>
    implements $MarketPlaceStateCopyWith<$Res> {
  _$MarketPlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketPlaceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? productServices = null,
    Object? productEntities = null,
    Object? filterCount = null,
    Object? loading = null,
    Object? hasNextPage = null,
    Object? page = null,
  }) {
    return _then(
      _value.copyWith(
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as Exception?,
            productServices:
                null == productServices
                    ? _value.productServices
                    : productServices // ignore: cast_nullable_to_non_nullable
                        as List<ProductEntity>,
            productEntities:
                null == productEntities
                    ? _value.productEntities
                    : productEntities // ignore: cast_nullable_to_non_nullable
                        as List<ProductEntity>,
            filterCount:
                null == filterCount
                    ? _value.filterCount
                    : filterCount // ignore: cast_nullable_to_non_nullable
                        as int,
            loading:
                null == loading
                    ? _value.loading
                    : loading // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasNextPage:
                null == hasNextPage
                    ? _value.hasNextPage
                    : hasNextPage // ignore: cast_nullable_to_non_nullable
                        as bool,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res>
    implements $MarketPlaceStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
    _$SplashStateImpl value,
    $Res Function(_$SplashStateImpl) then,
  ) = __$$SplashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Exception? error,
    List<ProductEntity> productServices,
    List<ProductEntity> productEntities,
    int filterCount,
    bool loading,
    bool hasNextPage,
    int page,
  });
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$MarketPlaceStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
    _$SplashStateImpl _value,
    $Res Function(_$SplashStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarketPlaceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? productServices = null,
    Object? productEntities = null,
    Object? filterCount = null,
    Object? loading = null,
    Object? hasNextPage = null,
    Object? page = null,
  }) {
    return _then(
      _$SplashStateImpl(
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as Exception?,
        productServices:
            null == productServices
                ? _value._productServices
                : productServices // ignore: cast_nullable_to_non_nullable
                    as List<ProductEntity>,
        productEntities:
            null == productEntities
                ? _value._productEntities
                : productEntities // ignore: cast_nullable_to_non_nullable
                    as List<ProductEntity>,
        filterCount:
            null == filterCount
                ? _value.filterCount
                : filterCount // ignore: cast_nullable_to_non_nullable
                    as int,
        loading:
            null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasNextPage:
            null == hasNextPage
                ? _value.hasNextPage
                : hasNextPage // ignore: cast_nullable_to_non_nullable
                    as bool,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$SplashStateImpl extends _SplashState {
  _$SplashStateImpl({
    this.error,
    final List<ProductEntity> productServices = const [],
    final List<ProductEntity> productEntities = const [],
    this.filterCount = 0,
    this.loading = false,
    this.hasNextPage = true,
    this.page = 1,
  }) : _productServices = productServices,
       _productEntities = productEntities,
       super._();

  @override
  final Exception? error;
  final List<ProductEntity> _productServices;
  @override
  @JsonKey()
  List<ProductEntity> get productServices {
    if (_productServices is EqualUnmodifiableListView) return _productServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productServices);
  }

  final List<ProductEntity> _productEntities;
  @override
  @JsonKey()
  List<ProductEntity> get productEntities {
    if (_productEntities is EqualUnmodifiableListView) return _productEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productEntities);
  }

  @override
  @JsonKey()
  final int filterCount;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'MarketPlaceState(error: $error, productServices: $productServices, productEntities: $productEntities, filterCount: $filterCount, loading: $loading, hasNextPage: $hasNextPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(
              other._productServices,
              _productServices,
            ) &&
            const DeepCollectionEquality().equals(
              other._productEntities,
              _productEntities,
            ) &&
            (identical(other.filterCount, filterCount) ||
                other.filterCount == filterCount) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    error,
    const DeepCollectionEquality().hash(_productServices),
    const DeepCollectionEquality().hash(_productEntities),
    filterCount,
    loading,
    hasNextPage,
    page,
  );

  /// Create a copy of MarketPlaceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);
}

abstract class _SplashState extends MarketPlaceState {
  factory _SplashState({
    final Exception? error,
    final List<ProductEntity> productServices,
    final List<ProductEntity> productEntities,
    final int filterCount,
    final bool loading,
    final bool hasNextPage,
    final int page,
  }) = _$SplashStateImpl;
  _SplashState._() : super._();

  @override
  Exception? get error;
  @override
  List<ProductEntity> get productServices;
  @override
  List<ProductEntity> get productEntities;
  @override
  int get filterCount;
  @override
  bool get loading;
  @override
  bool get hasNextPage;
  @override
  int get page;

  /// Create a copy of MarketPlaceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
