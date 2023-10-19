import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../router/route_module.dart';
import 'bloc/weather_bloc.dart';
import 'pages/weather_detail_page.dart';

@injectable
class WeatherRoutes extends RouteModule {
  @override
  Map<String, WidgetBuilder> getAll(RouteSettings settings) => {
        WeatherDetailPage.routeName: (context) {
          final args = (settings.arguments ?? {}) as Map;
          return BlocProvider<WeatherBloc>(
            create: (context) => injector.get(),
            child: WeatherDetailPage(cityName: args['cityName']),
          );
        },
      };
}
