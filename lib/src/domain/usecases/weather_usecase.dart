import 'package:injectable/injectable.dart';

import '../entities/weather/weather.dart';
import '../repository/weather_repository.dart';

@injectable
class WeatherUsecase {
  final WeatherRepository _weatherRepository;

  WeatherUsecase(this._weatherRepository);

  Future<Weather> fetchWeatherFromLocation(String search) async {
    return _weatherRepository.fetchWeatherFromLocation(search);
  }
}
