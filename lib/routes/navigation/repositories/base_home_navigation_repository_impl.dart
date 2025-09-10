import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/presentation/base_home/domain/repositories/base_home_navigation_repository.dart';
import 'package:marketplace/routes/nav_list/base_home_nav.dart';

class BaseHomeNavigationRepositoryImpl implements BaseHomeNavigationRepository {
  @override
  goToBaseHome(BuildContext context) {
    context.go(BaseHomeNav.baseHome.fullpath);
  }

}