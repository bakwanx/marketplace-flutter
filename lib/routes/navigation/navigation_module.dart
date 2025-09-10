
import 'package:marketplace/routes/navigation/repositories/auth_navigation_repository.dart';
import 'package:marketplace/presentation/base_home/domain/repositories/base_home_navigation_repository.dart';
import 'package:marketplace/routes/navigation/repositories/profile_navigation_repository.dart';
import 'package:marketplace/routes/navigation/repositories/auth_navigation_repository_impl.dart';
import 'package:marketplace/routes/navigation/repositories/base_home_navigation_repository_impl.dart';
import 'package:marketplace/routes/navigation/repositories/profile_navigation_repository_impl.dart';

import '../../di/dependency_injection.dart';

class NavigationModule {
  Future<void> call() async {
    di.registerLazySingleton<AuthNavigationRepository>(
            () => AuthNavigationRepositoryImpl());
    di.registerLazySingleton<BaseHomeNavigationRepository>(
            () => BaseHomeNavigationRepositoryImpl());
    di.registerLazySingleton<ProfileNavigationRepository>(
            () => ProfileNavigationRepositoryImpl());
  }
}
