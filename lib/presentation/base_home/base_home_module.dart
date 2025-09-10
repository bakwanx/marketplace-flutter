import 'package:marketplace/presentation/base_home/domain/use_cases/home_base_use_case.dart';
import 'package:marketplace/presentation/base_home/presentation/cubit/base_home_cubit.dart';

import '../../di/dependency_injection.dart';

class BaseHomeModule {
  Future<void> call() async {
    // Usecase
    di.registerFactory(() => HomeBaseUseCase());
    //CUBIT
    di.registerFactory(() => BaseHomeCubit(di()));
  }
}