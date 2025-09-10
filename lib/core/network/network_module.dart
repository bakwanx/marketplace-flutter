import 'package:dio/dio.dart';
import 'package:marketplace/data/datasource/product_datasource.dart';
import 'package:marketplace/data/repository_impl/product_repository_impl.dart';
import 'package:marketplace/domain/repository/product_repository.dart';

import '../../di/dependency_injection.dart';

class NetworkModule {
  Future<void> call() async {
    di.registerLazySingleton(
          () => Dio(
        BaseOptions(
          contentType: 'application/json',
          connectTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      ),
    );

  }
}