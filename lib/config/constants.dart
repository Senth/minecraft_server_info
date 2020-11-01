import 'package:flutter/widgets.dart';

abstract class AppColors {
  static const background = Color(0xff000000);
  static const primary = Color(0xff206fff);
  static const appBarBackground = background;

  static const text = Color(0xdde6ffff);
  static const header = Color(0xdd40afff);
  static const buttonMenu = Color(0xffb3e5fc);
  static const buttonMenuHover = Color(0xffe6ffff);
  static const buttonMenuActive = Color(0xff82b3c9);

  static const textButton = Color(0xdd81d4fa);
  static const textButtonHover = Color(0xddb6ffff);
  static const textButtonActive = Color(0xdd4ba3c7);
}

abstract class Fonts {
  static const text = 'AnticSlab';
  static const header = 'Orbitron';
}

abstract class FontSizes {
  static const text = 20.0;
  static const menu = 24.0;
  static const h1 = 48.0;
  static const h2 = 36.0;
}

abstract class TextStyles {
  static const text = TextStyle(
    fontFamily: Fonts.text,
    fontSize: FontSizes.text,
    color: AppColors.text,
    height: 2.0,
  );
}

abstract class Urls {
  static const baseUrl = 'https://minecraft.senth.org';
  static const worldSnapshot = baseUrl + '/saves/current-server-world.tgz';
}

// abstract class Margins {
//   static const content = const EdgeInsets.only(left: 30, right: 30, bottom: 30);
// }

enum Routes {
  home,
  map,
  mods,
}

extension RouteHelper on Routes {
  String get uri {
    switch (this) {
      case Routes.home:
        return '/';
      case Routes.map:
        return '/dynmap';
      case Routes.mods:
        return '/mods';
    }
    return '/';
  }

  String get name {
    switch (this) {
      case Routes.home:
        return 'Home';
      case Routes.map:
        return 'Map';
      case Routes.mods:
        return 'Mods';
    }
    return 'Undefined';
  }
}
