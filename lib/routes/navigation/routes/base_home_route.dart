import 'package:go_router/go_router.dart';
import 'package:marketplace/presentation/base_home/presentation/base_home_screen.dart';
import 'package:marketplace/routes/nav_list/base_home_nav.dart';

class BaseHomeRoute extends GoRoute {
  BaseHomeRoute()
    : super(
        path: BaseHomeNav.baseHome.path,
        builder: (context, state) => const BaseHomeScreen(),
        routes: [],
      );
}
