import '../entities/weather/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeatherFromLocation(String search);
}
