import 'package:flutter/material.dart';

import '../../../core/animations/slide_transition_animation.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../utils/app_colors.dart';
import 'weather_every_hour_list_view_item.dart';

class WeatherEveryHourListView extends StatelessWidget {
  const WeatherEveryHourListView({
    Key? key,
    required this.weather,
    required this.index,
  }) : super(key: key);

  final Weather weather;
  final int index;

  @override
  Widget build(BuildContext context) {
    final forecastHour = weather.forecast!.forecastday![index].forecastHour;
    return SlideTransitionAnimation(
      duration: const Duration(milliseconds: 900),
      begin: const Offset(0.6, 0),
      end: Offset.zero,
      curve: Curves.easeIn,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 35,
          left: 12,
          right: 12,
        ),
        decoration: BoxDecoration(
          color: AppColors.transparentWithOpacity10,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: 115,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: forecastHour?.length ?? 0,
          itemBuilder: (context, indexForList) =>
              WeatherEveryHourListViewItemWidget(
            hour: forecastHour![indexForList],
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 13,
          ),
        ),
      ),
    );
  }
}
