part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const SplashState._();

  const factory SplashState({
    Exception? error,
    @Default(false) isFirstTime,
    @Default(false) isLogin,
  }) = _SplashState;

}