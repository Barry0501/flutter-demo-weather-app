import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../dependency_injection/di.dart';

abstract class RouteModule extends InjectorGet {
  GetIt get injector => GetIt.instance;

  Map<String, WidgetBuilder> getAll(RouteSettings settings);
}

abstract class RouteModuleBuilder extends InjectorGet {
  List<RouteModule> get routes;
  List<RouteModuleBuilder> get routerModules => <RouteModuleBuilder>[];

  Map<String, WidgetBuilder> getAll(RouteSettings settings) {
    final result = <String, WidgetBuilder>{};
    for (final e in routes) {
      result.addAll(e.getAll(settings));
    }
    for (final e in routerModules) {
      result.addAll(e.getAll(settings));
    }
    return result;
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    if (routeName == null) {
      throw Exception('please check route name: $routeName');
    }

    final builder = getAll(settings)[routeName];

    if (builder == null) {
      throw Exception('please check route builder: $builder');
    }

    if ([
      '/',
    ].contains(settings.name)) {
      return pageRouteBuilder(builder);
    }
    final isShowDialog = routeName.contains('dialog');
    return MaterialPageRoute(
      builder: builder,
      settings: settings,
      fullscreenDialog: isShowDialog,
    );
  }

  PageRouteBuilder pageRouteBuilder(WidgetBuilder? builder) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return builder!(context);
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween =
            Tween(begin: const Offset(0.0, 1.0), end: Offset.zero).chain(
          CurveTween(curve: Curves.easeIn),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
