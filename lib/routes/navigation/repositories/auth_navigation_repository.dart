import 'package:flutter/material.dart';

abstract class AuthNavigationRepository {
  goToEmailLoginScreen(BuildContext context);
  goToPasswordLoginScreen(BuildContext context,{required String email});
}