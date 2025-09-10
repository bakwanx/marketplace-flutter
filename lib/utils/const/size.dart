import 'package:flutter/material.dart';
import 'package:marketplace/utils/ext/buildcontext_ext.dart';

double horizontalPadding(BuildContext context) {
  if (context.isTablet()) {
    // return 48.0;
    return 32.0;
  }

  return 16.0;
}