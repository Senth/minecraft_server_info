import 'package:flutter/widgets.dart';

class AppColors {
  static const background = Color(0xff000000);
  static const primary = Color(0xff206fff);
  static const text = Color(0xffe6ffff);
  static const appBarBackground = background;

  static const buttonMenu = Color(0xffb3e5fc);
  static const buttonMenuHover = text;
  static const buttonMenuActive = Color(0xff82b3c9);
}

enum Routes { home, map }

extension RouteHelper on Routes {
  String get uri {
    switch (this) {
      case Routes.home:
        return '/';
      case Routes.map:
        return '/dynmap';
    }
    return '/';
  }

  String get name {
    switch (this) {
      case Routes.home:
        return 'Home';
      case Routes.map:
        return 'Map';
    }
    return 'Undefined';
  }
}
