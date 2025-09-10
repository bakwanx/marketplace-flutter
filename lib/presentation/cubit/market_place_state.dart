part of 'market_place_cubit.dart';

@freezed
class MarketPlaceState with _$MarketPlaceState   {
  MarketPlaceState._();

  factory MarketPlaceState({
    Exception? error,
    @Default([]) List<ProductEntity> productServices,
    @Default([]) List<ProductEntity> productEntities,
    @Default(0) int filterCount,
    @Default(false) bool loading,
    @Default(true) bool hasNextPage,
    @Default(1) int page,
  }) = _SplashState;


}