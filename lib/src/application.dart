import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/coordinator/app_coordinator.dart';
import 'dependency_injection/di.dart';
import 'router/route_observer.dart';
import 'routes.dart';

class Application extends StatefulWidget {
  final String initialRoute;
  final List<BlocProvider> providers;
  final MyRouteObserver myRouteObserver;
  final bool isProduction;

  const Application({
    Key? key,
    required this.initialRoute,
    required this.providers,
    required this.myRouteObserver,
    required this.isProduction,
  }) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  Widget _buildMaterialApp() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppCoordinator.root,
      theme: ThemeData(brightness: Brightness.dark),
      navigatorObservers: [
        MyNavigatorObserver(),
        widget.myRouteObserver,
      ],
      builder: _materialBuilder,
      onGenerateRoute: injector.get<Routes>().generateRoute,
      initialRoute: widget.initialRoute,
    );
  }

  Widget _materialBuilder(BuildContext context, Widget? child) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: child!,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: widget.providers,
      child: _buildMaterialApp(),
    );
  }
}

final routeObserver = RouteObserver<PageRoute>();

class MyNavigatorObserver extends NavigatorObserver {
  static List<Route<dynamic>> routeStack = [];

  static List<String> get listRoute =>
      routeStack.map((e) => e.settings.name ?? 'null').toList();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    routeStack.add(route);
    _notiOnRoutesChanged();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    routeStack.removeLast();
    _notiOnRoutesChanged();
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    routeStack.removeLast();
    _notiOnRoutesChanged();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    routeStack.removeLast();
    if (newRoute != null) {
      routeStack.add(newRoute);
    }
    _notiOnRoutesChanged();
  }

  static final _routeStream = StreamController<List<String>>.broadcast();

  static Stream<List<String>> get onRoutesChanged => _routeStream.stream;

  void _notiOnRoutesChanged() {
    _routeStream.add(listRoute);
  }
}
