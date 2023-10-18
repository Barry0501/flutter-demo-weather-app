import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../router/route_module.dart';
import '../splash/pages/splash_screen.dart';
import 'bloc/home_bloc.dart';
import 'pages/home_page.dart';

@injectable
class HomeRoutes extends RouteModule {
  @override
  Map<String, WidgetBuilder> getAll(RouteSettings settings) => {
        SpashScreen.routeName: (context) {
          return const SpashScreen();
        },
        HomePage.routeName: (context) {
          return BlocProvider<HomeBloc>(
            create: (context) => injector.get(),
            child: const HomePage(),
          );
        },
      };
}
