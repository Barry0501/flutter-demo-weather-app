import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'src/application.dart';
import 'src/core/configurations/configurations.dart';
import 'src/core/coordinator/app_coordinator.dart';
import 'src/core/services/logger_service.dart';
import 'src/dependency_injection/di.dart';
import 'src/presentation/home/bloc/home_bloc.dart';
import 'src/presentation/splash/pages/splash_screen.dart';
import 'src/router/route_observer.dart';

abstract class IAppDelegate {
  Future<Widget> build(Map<String, dynamic> env);
  Future<void> run(Map<String, dynamic> env);

  GlobalKey<NavigatorState> get root => AppCoordinator.root;
}

@singleton
class AppDelegate extends IAppDelegate {
  @override
  Future<Widget> build(Map<String, dynamic> env) async {
    WidgetsFlutterBinding.ensureInitialized();

    Configurations().setConfigurationValues(env);
    await configureDependencies(environment: Environment.prod);

    return Application(
      isProduction: Configurations.isProduction,
      providers: [
        BlocProvider<HomeBloc>(create: (_) => injector.get()),
      ],
      initialRoute: SpashScreen.routeName,
      myRouteObserver: MyRouteObserver(),
    );
  }

  Future<void> _run(Map<String, dynamic> env) async {
    final app = await build(env);
    runApp(app);
  }

  @override
  Future<void> run(Map<String, dynamic> env) async {
    await runZonedGuarded(() async {
      await _run(env);
    }, (e, trace) {
      if (kDebugMode) {
        LoggerService.print(
            '[AppDelegate]: ${e.toString()}  ${trace.toString()}');
      }
    });
  }
}
