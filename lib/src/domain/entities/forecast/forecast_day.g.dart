// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayImpl _$$ForecastDayImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDayImpl(
      date: json['date'] as String?,
      forecastHour: (json['hour'] as List<dynamic>?)
          ?.map((e) => ForecastHour.fromJson(e as Map<String, dynamic>))
          .toList(),
      weatherCondition: json['condition'] == null
          ? null
          : WeatherCondition.fromJson(
              json['condition'] as Map<String, dynamic>),
      day: json['day'] == null
          ? null
          : Day.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastDayImplToJson(_$ForecastDayImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'hour': instance.forecastHour,
      'condition': instance.weatherCondition,
      'day': instance.day,
    };
