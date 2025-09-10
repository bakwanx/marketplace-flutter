import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:marketplace/core/network/network_module.dart';

import 'package:marketplace/presentation/base_home/base_home_module.dart';
import 'package:marketplace/presentation/features_module.dart';
import '../routes/navigation/navigation_module.dart';

final di = GetIt.instance;

Future<void> initDependency() async {
  di.registerLazySingleton(() => Connectivity());
  NetworkModule _networkModule = NetworkModule();

  final FeaturesModule _featuresModule = FeaturesModule();
  final NavigationModule _navigationModule = NavigationModule();
  final BaseHomeModule _baseHomeModule = BaseHomeModule();

  await _featuresModule();
  await _networkModule();
  await _navigationModule();
  await _baseHomeModule();
}
