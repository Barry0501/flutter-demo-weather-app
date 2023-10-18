import 'package:flutter/material.dart';

import 'route_module.dart';
import 'route_observer.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({
    super.key,
    required this.initialRoute,
    this.navigationKey,
    this.scrollController,
    required this.routes,
    this.myRouteObserver,
  });

  final String initialRoute;
  final GlobalKey<NavigatorState>? navigationKey;
  final ScrollController? scrollController;
  final RouteModuleBuilder routes;
  final MyRouteObserver? myRouteObserver;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigationKey,
      initialRoute: initialRoute,
      observers: [if (myRouteObserver != null) myRouteObserver!],
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => const SizedBox(),
          );
        } else if (settings.name == initialRoute) {
          return routes.generateRoute(
            RouteSettings(
              name: initialRoute,
              arguments: {
                if (settings.arguments is Map) ...settings.arguments as Map,
                'data': settings.arguments,
                'scrollController': scrollController,
              },
            ),
          );
        }
        return routes.generateRoute(settings);
      },
    );
  }
}
