import 'package:injectable/injectable.dart';

import 'presentation/home/home_routes.dart';
import 'presentation/weather/weather_routes.dart';
import 'router/route_module.dart';

@singleton
class Routes extends RouteModuleBuilder {
  @override
  List<RouteModule> get routes => [
        HomeRoutes(),
        WeatherRoutes(),
      ];
}
