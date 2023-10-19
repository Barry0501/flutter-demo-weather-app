import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../router/route_module.dart';
import '../splash/pages/splash_screen.dart';
import 'pages/home_page.dart';

@injectable
class HomeRoutes extends RouteModule {
  @override
  Map<String, WidgetBuilder> getAll(RouteSettings settings) => {
        SpashScreen.routeName: (context) {
          return const SpashScreen();
        },
        HomePage.routeName: (context) {
          return const HomePage();
        },
      };
}
