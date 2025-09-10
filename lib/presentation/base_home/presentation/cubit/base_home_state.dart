part of 'base_home_cubit.dart';

@freezed
class BaseHomeState with _$BaseHomeState  {
  BaseHomeState._();

  factory BaseHomeState({
    Exception? error,
    @Default(0) int indexPage,
    @Default([]) List<Widget> pages,
    @Default(false) bool loading,
  }) = _SplashState;

}

