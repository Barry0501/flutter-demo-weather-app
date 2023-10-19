import 'package:injectable/injectable.dart';

import '../../domain/entities/weather/weather.dart';
import '../../domain/repository/weather_repository.dart';
import '../datasources/weather_api.dart';

@Injectable(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepositoryImpl(this._weatherApi);

  @override
  Future<Weather> fetchWeatherBySearch(String search) async {
    final res = await _weatherApi.fetchWeatherBySearch(search: search, days: 7);
    return res.data;
  }
}
