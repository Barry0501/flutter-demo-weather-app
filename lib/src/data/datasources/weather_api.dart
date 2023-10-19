import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/entities/weather/weather.dart';
import '../models/response/api_response.dart';

part 'weather_api.g.dart';

class WeatherApiConstant {
  static const String fetchWeatherBySearch = 'forecast.json';
}

@RestApi()
@injectable
abstract class WeatherApi {
  @factoryMethod
  factory WeatherApi(Dio dio) = _WeatherApi;

  @POST(WeatherApiConstant.fetchWeatherBySearch)
  Future<ApiResponse<Weather>> fetchWeatherBySearch({
    @Query('q') required String search,
    @Query('days') required int days,
  });
}
