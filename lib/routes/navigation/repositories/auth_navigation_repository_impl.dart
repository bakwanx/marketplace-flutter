import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/routes/nav_list/auth_nav.dart';
import 'package:marketplace/routes/utils/util_router.dart';

import 'auth_navigation_repository.dart';

class AuthNavigationRepositoryImpl implements AuthNavigationRepository{

  @override
  goToEmailLoginScreen(BuildContext context) {
    context.push(AuthNav.emailLogin.fullpath);
  }

  @override
  goToPasswordLoginScreen(BuildContext context,  {required String email}) {
    context.pushExtra(AuthNav.passwordLogin.fullpath, extra: {"email": email});
  }

}