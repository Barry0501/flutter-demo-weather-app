import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/forecast/forecast_hour.dart';
import '../../../utils/change_weather_icon.dart';
import '../../../utils/uidata.dart';

class WeatherEveryHourListViewItemWidget extends StatelessWidget {
  const WeatherEveryHourListViewItemWidget({Key? key, required this.hour})
      : super(key: key);

  final ForecastHour hour;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat.jm().format(DateTime.parse(hour.time!)),
          style: const TextStyle(fontSize: 14),
        ),
        Image.asset(
          '${UIData.imageDir}/${changeWeatherIcon(weatherName: hour.weatherCondition!.text!)}.png',
          width: 40,
          height: 40,
        ),
        Text(
          '${hour.tempC!.toInt()}°',
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
