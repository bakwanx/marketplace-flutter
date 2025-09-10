
import 'package:flutter/cupertino.dart';

enum ScreenType {
  watch,
  phone,
  tablet,
  desktop,
}

extension ContextExt on BuildContext {
  bool isTablet() {
    return _screenType == ScreenType.tablet;
  }

  bool isPhone() {
    return _screenType == ScreenType.phone;
  }

  bool isDesktop() {
    return _screenType == ScreenType.desktop;
  }

  bool isWatch() {
    return _screenType == ScreenType.watch;
  }

  bool isPortrait() {
    return MediaQuery.of(this).orientation == Orientation.portrait;
  }

  double width() => MediaQuery.of(this).size.width;

  ScreenType get _screenType {
    final deviceWidth = MediaQuery.of(this).size.shortestSide;
    if (deviceWidth >= 1200) return ScreenType.desktop;
    if (deviceWidth >= 550) return ScreenType.tablet;
    if (deviceWidth < 300) return ScreenType.watch;
    return ScreenType.phone;
  }
}
