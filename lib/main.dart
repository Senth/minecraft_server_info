import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'screens/home_screen.dart';
import 'screens/map_screen.dart';
import 'config/constants.dart';
import 'config/configure_nonweb.dart'
    if (dart.library.html) 'config/configure_web.dart';

void main() {
  configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Blushine Minecraft Server',
      // theme: ThemeData(
      //   primaryColor: AppColors.primary,
      //   textTheme: Typography.whiteHelsinki,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      // initialRoute: Routes.home.uri,
      initialRoute: '/',
      routes: {
        Routes.home.uri: (context) => HomeScreen(),
        Routes.map.uri: (context) => MapScreen()
      },
      pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) {
        return PageRouteBuilder(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return builder(context);
            },
            settings: settings);
      },
      color: AppColors.primary,
    );
  }
}
