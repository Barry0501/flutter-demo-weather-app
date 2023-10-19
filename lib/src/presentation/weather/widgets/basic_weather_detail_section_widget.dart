import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/animations/fade_transition_animation.dart';
import '../../../core/animations/slide_transition_animation.dart';
import '../../../domain/entities/weather/current_weather.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../utils/change_weather_icon.dart';
import '../../../utils/uidata.dart';

class BasicWeatherDetailSectionWidget extends StatelessWidget {
  const BasicWeatherDetailSectionWidget({
    Key? key,
    required this.weather,
    required this.index,
  }) : super(key: key);

  final Weather weather;
  final int index;

  @override
  Widget build(BuildContext context) {
    final currentWeather = weather.currentWeather;
    final day = weather.forecast!.forecastday![index].day!;
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          left: 12,
          right: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat.yMMMd().format(
                  DateTime.parse(weather.forecast!.forecastday![index].date!)),
              // style: AppStyles.textStyle16,
            ),
            SlideTransitionAnimation(
              duration: const Duration(milliseconds: 900),
              begin: const Offset(0.4, 0),
              end: Offset.zero,
              curve: Curves.easeIn,
              child: Image.asset(
                '${UIData.imageDir}/${changeWeatherIcon(
                  weatherName: index == 0
                      ? currentWeather!.weatherConditionName
                      : day.weatherCondition!.text!,
                )}.png',
                width: 260,
                height: 220,
              ),
            ),
            FadeTransitionAnimation(
              duration: const Duration(milliseconds: 1300),
              child: Text(
                index == 0
                    ? '${currentWeather?.weatherTempC}°'
                    : '${day.avgtempC!.toInt()}°',
                // style: AppStyles.textStyle40,
              ),
            ),
            SlideTransitionAnimation(
              duration: const Duration(milliseconds: 700),
              begin: const Offset(0, -0.5),
              end: Offset.zero,
              curve: Curves.easeIn,
              child: Text(
                index == 0
                    ? currentWeather!.weatherConditionName
                    : day.weatherCondition!.text!,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                // style: AppStyles.textStyle20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
