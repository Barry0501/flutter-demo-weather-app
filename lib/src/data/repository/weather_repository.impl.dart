import 'package:injectable/injectable.dart';

import '../../domain/entities/weather/weather.dart';
import '../../domain/repository/weather_repository.dart';
import '../datasources/weather_api.dart';

@Injectable(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepositoryImpl(this._weatherApi);

  @override
  Future<Weather> fetchWeatherFromLocation(String search) async {
    final res = await _weatherApi.fetchWeatherFromLocation(search: search);
    return res.data;
  }
}
