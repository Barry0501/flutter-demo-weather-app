import 'package:flutter/material.dart';
import '../../../core/animations/scale_transition_animation.dart';
import '../../../core/animations/slide_transition_animation.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../utils/change_gradient_color.dart';
import '../../../utils/change_gradient_color_with_opacity.dart';
import '../../../utils/change_weather_icon.dart';
import '../../../utils/uidata.dart';
import '../../shared/widgets/gradient_container_widget.dart';

class HistorySearchWeatherItemWidget extends StatelessWidget {
  const HistorySearchWeatherItemWidget({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScaleTransitionAnimation(
        duration: const Duration(milliseconds: 1500),
        child: GradientContainerWidget(
          margin: const EdgeInsets.only(top: 12),
          colors: changeGradientColorWithOpacity(
            weatherName: weather.currentWeather!.weatherCondition!.text!,
          ),
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          radius: 20,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              // Navigator.pushNamed(
              //   context,
              //   Routes.detailsView,
              //   arguments: ScreenArguments(
              //     weather: weather,
              //   ),
              // );
            },
            child: GradientContainerWidget(
              margin: const EdgeInsets.all(2.5),
              padding: const EdgeInsets.only(left: 10),
              radius: 20,
              colors: changeGradientColor(
                weatherName: weather.currentWeather!.weatherCondition!.text!,
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
                          weather.currentWeather!.weatherCondition!.text!,
                          style: const TextStyle(fontSize: 16),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${weather.currentWeather!.tempC!.toInt()}°',
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
                        '${UIData.imageDir}/${changeWeatherIcon(weatherName: weather.currentWeather!.weatherCondition!.text!)}.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
