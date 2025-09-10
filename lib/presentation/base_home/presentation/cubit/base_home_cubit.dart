import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:marketplace/presentation/base_home/domain/entities/bottom_nav_menu_entity.dart';

import '../../domain/use_cases/home_base_use_case.dart';

part 'base_home_state.dart';

part 'base_home_cubit.freezed.dart';

class BaseHomeCubit extends Cubit<BaseHomeState> {
  BaseHomeCubit(this._homeBaseUseCase) : super(BaseHomeState());
  HomeBaseUseCase _homeBaseUseCase;

  void onChangePage(int index) {
    emit(state.copyWith(indexPage: index));
  }

  void getPage() {
    emit(state.copyWith(
      pages: _homeBaseUseCase.getPage(),
    ));
  }
}
