import 'package:go_router/go_router.dart';
import 'package:marketplace/presentation/splash_screen.dart';

import '../../nav_list/splash_nav.dart';

class SplashRoutes extends GoRoute {
  SplashRoutes()
      : super(
    path: SplashNav.splash.path,
    builder: (context, state) => const SplashScreen(),
  );
}
