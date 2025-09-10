import 'package:go_router/go_router.dart';
import 'package:marketplace/routes/navigation/routes/base_home_route.dart';

import '../nav_list/splash_nav.dart';
import 'routes/splash_routes.dart';

class MainNavigation extends GoRouter {
  MainNavigation()
      : super(
    routes: [
      SplashRoutes(),
      BaseHomeRoute(),
    ],
    initialLocation: SplashNav.splash.fullpath,
    debugLogDiagnostics: true,
  );
}
