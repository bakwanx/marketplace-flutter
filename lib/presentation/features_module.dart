import 'package:marketplace/data/datasource/product_datasource.dart';
import 'package:marketplace/data/repository_impl/product_repository_impl.dart';
import 'package:marketplace/domain/repository/product_repository.dart';
import 'package:marketplace/domain/usecase/product_usecase.dart';
import 'package:marketplace/presentation/cubit/market_place_cubit.dart';
import 'package:marketplace/presentation/cubit/splash_cubit.dart';

import '../../di/dependency_injection.dart';
import 'cubit/login_cubit.dart';

class FeaturesModule {
  Future<void> call() async {
    // Datasource
    di.registerLazySingleton<ProductDs>(() => ProductDsImpl(di()));

    // Repository
    di.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(di()),
    );

    // UseCase
    di.registerLazySingleton<ProductUseCase>(() => ProductUseCase(di()));

    // Cubit
    di.registerFactory(() => SplashCubit());
    di.registerFactory(() => LoginCubit());
    di.registerFactory(() => MarketPlaceCubit(di()));
  }
}
