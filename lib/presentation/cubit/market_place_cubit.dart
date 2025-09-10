import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/product_entity.dart';
import '../../domain/usecase/product_usecase.dart';

part 'market_place_state.dart';

part 'market_place_cubit.freezed.dart';

class MarketPlaceCubit extends Cubit<MarketPlaceState> {
  MarketPlaceCubit(this._productUseCase) : super(MarketPlaceState());

  final ProductUseCase _productUseCase;

  Future<void> initData() async {
    emit(state.copyWith(loading: true));
    final result = await _productUseCase.getProducts(20, 1);
    result.fold(
      (l) {
        emit(state.copyWith(loading: false, error: l));
      },
      (r) {
        emit(
          state.copyWith(
            loading: false,
            productServices: r.take(5).toList(),
            productEntities: r,
          ),
        );
      },
    );
  }

  Future<void> getProducts() async {
    if (!state.hasNextPage) {
      return;
    }
    final currPage = state.page + 1;

    emit(state.copyWith(loading: true, page: currPage));

    try {
      final result = await _productUseCase.getProducts(20, currPage);

      result.fold(
        (l) async {
          emit(state.copyWith(error: l));
        },
        (r) async {
          final productEntities = [
            if (currPage != 1) ...state.productEntities,
            ...r,
          ];

          emit(
            state.copyWith(
              loading: false,
              productEntities: productEntities,
              page: currPage,
            ),
          );

          if (productEntities.isEmpty) {
            emit(state.copyWith(hasNextPage: false, loading: false,));
          }
        },
      );
    } catch (e) {
      emit(state.copyWith(error: e as Exception, loading: false));
    }
  }
}
