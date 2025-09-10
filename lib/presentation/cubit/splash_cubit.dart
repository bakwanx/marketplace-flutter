import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState>
    {
  SplashCubit(
  ) : super(const SplashState());


  initData() async {
    Timer(const Duration(seconds: 2), () {
      emit(
        state.copyWith(isLogin: false),
      );
    });
  }

}
