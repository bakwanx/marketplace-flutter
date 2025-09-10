import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/routes/navigation/repositories/profile_navigation_repository.dart';
import 'package:marketplace/routes/nav_list/profile_nav.dart';

class ProfileNavigationRepositoryImpl implements ProfileNavigationRepository {
  @override
  goToProfile(BuildContext context) {
    context.push(ProfileNav.profile.fullpath);
  }

}