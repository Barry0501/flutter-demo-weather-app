import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/home_bloc.dart';
import '../../shared/widgets/shimmer/shimmer_details_view_widget.dart';
import '../bloc/weather_bloc.dart';
import '../widgets/weather_detail_error_widget.dart';
import '../widgets/weather_detail_view_body_widget.dart';

class WeatherDetailPage extends StatefulWidget {
  static const String routeName = '/weather-detail';

  const WeatherDetailPage({super.key, required this.cityName});

  final String cityName;

  @override
  State<WeatherDetailPage> createState() => _WeatherDetailPageState();
}

class _WeatherDetailPageState extends State<WeatherDetailPage> {
  WeatherBloc get weatherloc => context.read();
  HomeBloc get homeBloc => context.read();

  void _onListenerBloc(BuildContext context, WeatherState state) {
    if (state is FetchWeatherDetailSuccess) {
      homeBloc.add(AddSearchHistoryResultEvent(state.weather));
    }
  }

  @override
  void initState() {
    super.initState();

    weatherloc.add(FetchWeatherBySearchEvent(textSearch: widget.cityName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: _onListenerBloc,
        builder: (context, state) {
          if (state is FetchWeatherDetailSuccess) {
            return WeatherDetailViewBodyWidget(weather: state.weather);
          } else if (state is FetchWeatherDetailFail) {
            return const DetailsErrorWidget(
              error: 'Location is not found or something went wrong!',
            );
          }
          return const ShimmerDetailsViewWidget();
        },
      ),
    );
  }
}
