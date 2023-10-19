import 'package:flutter/material.dart';

import '../../../core/animations/scale_transition_animation.dart';
import '../../../core/animations/slide_transition_animation.dart';
import '../../../domain/entities/weather/current_weather.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../utils/change_gradient_color.dart';
import '../../../utils/change_gradient_color_with_opacity.dart';
import '../../../utils/change_weather_icon.dart';
import '../../../utils/uidata.dart';
import '../../shared/widgets/gradient_container_widget.dart';
import '../home_coordinator.dart';

class HistorySearchWeatherItemWidget extends StatelessWidget {
  const HistorySearchWeatherItemWidget({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final currentWeather = weather.currentWeather;

    return ScaleTransitionAnimation(
      duration: const Duration(milliseconds: 1500),
      child: GradientContainerWidget(
        margin: const EdgeInsets.only(top: 12),
        colors: changeGradientColorWithOpacity(
          weatherName: currentWeather!.weatherConditionName,
        ),
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        radius: 20,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            context.startWeatherDetailPage(weather.location?.name ?? '');
          },
          child: GradientContainerWidget(
            margin: const EdgeInsets.all(2.5),
            padding: const EdgeInsets.only(left: 10),
            radius: 20,
            colors: changeGradientColor(
              weatherName: currentWeather.weatherConditionName,
            ),
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        weather.location!.name!,
                        style: const TextStyle(fontSize: 25),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        currentWeather.weatherConditionName,
                        style: const TextStyle(fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${currentWeather.weatherTempC}°',
                        style: const TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SlideTransitionAnimation(
                    begin: const Offset(2, 0),
                    end: Offset.zero,
                    curve: Curves.elasticInOut,
                    duration: const Duration(milliseconds: 2000),
                    child: Image.asset(
                      '${UIData.imageDir}/${changeWeatherIcon(weatherName: currentWeather.weatherConditionName)}.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
