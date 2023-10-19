import '../entities/weather/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeatherBySearch(String search);
}
