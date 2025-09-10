import 'package:flutter/material.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';

class CustomColor {
  CustomColor._();
  static Color greenColor = Color(0xff2E4A3B);
  static Color yellowLightColor = Color(0xffFFDE81);
  static Color redColor = Color(0xffEF5350);
  static Color formColor = Color(0xffEAEAEA);
  static Color backgroundColor1 = Color(0xffFEFEFE);
  static Color backgroundColor2 = Color(0xffFAFAFA);
  static Color blackColor = Color(0xff000000);
  static Color iconNavBottomColor = Color(0xffDCDCDC);
}

class SizeScreen {
  static double maxHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static double maxWidth(BuildContext context) => MediaQuery.of(context).size.width;
}

class DefaultSize {
  static double defaultMargin = 24.0;
  static double defaultRadius = 8.0;
}