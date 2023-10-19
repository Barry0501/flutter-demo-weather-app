import 'package:flutter/material.dart';

import '../../../core/animations/slide_transition_animation.dart';
import '../../../domain/entities/weather/weather.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/change_gradient_color.dart';
import '../../shared/widgets/gradient_container_widget.dart';
import '../../shared/widgets/page_indicator_widget.dart';
import 'app_bar_widget.dart';
import 'basic_weather_detail_section_widget.dart';
import 'secondary_weather_detail_section_widget.dart';
import 'weather_every_hour_list_view.dart';

class WeatherDetailViewBodyWidget extends StatefulWidget {
  const WeatherDetailViewBodyWidget({Key? key, required this.weather})
      : super(key: key);

  final Weather weather;

  @override
  State<WeatherDetailViewBodyWidget> createState() =>
      _WeatherDetailViewBodyWidgetState();
}

class _WeatherDetailViewBodyWidgetState
    extends State<WeatherDetailViewBodyWidget> {
  Weather get weather => widget.weather;

  final _pageCtrl = PageController();

  @override
  void dispose() {
    _pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: _pageCtrl,
          itemCount: weather.forecast!.forecastday!.length,
          itemBuilder: (context, index) {
            return GradientContainerWidget(
              colors: changeGradientColor(
                weatherName: index == 0
                    ? (weather.currentWeather?.weatherCondition?.text ?? '')
                    : (weather.forecast?.forecastday?[index].day
                            ?.weatherCondition?.text ??
                        ''),
              ),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  AppBarWidget(
                    title: SlideTransitionAnimation(
                      duration: const Duration(milliseconds: 700),
                      begin: const Offset(0.5, 0),
                      end: Offset.zero,
                      curve: Curves.easeIn,
                      child: Text(
                        weather.location!.name!,
                        style: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  BasicWeatherDetailSectionWidget(
                    weather: weather,
                    index: index,
                  ),
                  SecondaryWeatherDetailSectionWidget(
                    weather: weather,
                    index: index,
                  ),
                  WeatherEveryHourListView(
                    weather: weather,
                    index: index,
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: PageIndicatorWidget(
            pageController: _pageCtrl,
            dotColor: AppColors.white,
            count: weather.forecast?.forecastday?.length ?? 0,
          ),
        ),
      ],
    );
  }
}
