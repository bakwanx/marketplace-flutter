import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void onChangeEmailTextFormField(String value){
    if(value.isNotEmpty){
      emit(state.copyWith(isActiveButtonEmail: true));
    } else {
      emit(state.copyWith(isActiveButtonEmail: false));
    }
  }

  void onChangePasswordTextFormField(String value){
    if(value.isNotEmpty){
      emit(state.copyWith(isActiveButtonPassword: true));
    } else {
      emit(state.copyWith(isActiveButtonPassword: false));
    }
  }

  Future<void> login(String email, String password) async {
    emit(state.copyWith(loading: true));
    Timer(const Duration(seconds: 2), () {
      emit(state.copyWith(isSuccessLogin: true, loading: false));
    });

  }

}
