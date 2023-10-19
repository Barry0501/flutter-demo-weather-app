import 'package:flutter/material.dart';

import '../../../core/animations/slide_transition_animation.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../utils/app_colors.dart';
import '../../shared/widgets/custom_divider_widget.dart';
import 'secondary_weather_detail_section_item_widget.dart';

class SecondaryWeatherDetailSectionWidget extends StatelessWidget {
  const SecondaryWeatherDetailSectionWidget({
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
    return SlideTransitionAnimation(
      duration: const Duration(milliseconds: 700),
      begin: const Offset(0.5, 0),
      end: Offset.zero,
      curve: Curves.easeIn,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.transparentWithOpacity10,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Row(
          children: [
            SecondaryWeatherDetailsSectionItemWidget(
              title: 'UV INDEX',
              value: index == 0
                  ? currentWeather!.uv!.toInt().toString()
                  : day.uv.toString(),
              icon: Icons.sunny,
              iconColor: AppColors.yellow,
            ),
            const CustomDividerWidget(),
            SecondaryWeatherDetailsSectionItemWidget(
              title: 'WIND',
              value: index == 0
                  ? '${currentWeather?.windMph} m/h'
                  : '${day.maxwindMph} m/h',
              icon: Icons.wind_power,
              iconColor: Colors.indigoAccent,
            ),
            const CustomDividerWidget(),
            SecondaryWeatherDetailsSectionItemWidget(
              title: 'HUMIDITY',
              value: index == 0
                  ? '${currentWeather?.humidity?.toInt()}%'
                  : '${day.avghumidity}',
              icon: Icons.water_drop,
              iconColor: AppColors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
