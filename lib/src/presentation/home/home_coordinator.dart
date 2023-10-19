import 'package:flutter/material.dart';

import '../weather/pages/weather_detail_page.dart';

extension HomeCoordinator on BuildContext {
  Future<T?> startWeatherDetailPage<T>(String cityName) {
    return Navigator.pushNamed(
      this,
      WeatherDetailPage.routeName,
      arguments: {'cityName': cityName},
    );
  }
}
