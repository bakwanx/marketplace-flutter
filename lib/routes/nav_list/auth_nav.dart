import 'package:marketplace/routes/nav_list/utils/navigation_data.dart';



class AuthNav {
  static const emailLogin = NavigationData(path: '/email-login');
  static const passwordLogin = NavigationData(path: 'password-login', parent: emailLogin);

  AuthNav._();
}
