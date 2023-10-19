// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_hour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastHourImpl _$$ForecastHourImplFromJson(Map<String, dynamic> json) =>
    _$ForecastHourImpl(
      time: json['time'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      tempF: (json['temp_f'] as num?)?.toDouble(),
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      weatherCondition: json['condition'] == null
          ? null
          : WeatherCondition.fromJson(
              json['condition'] as Map<String, dynamic>),
      humidity: json['humidity'] as num?,
      uv: json['uv'] as num?,
      windMph: json['windMph'] as num?,
      avghumidity: json['avghumidity'] as num?,
      maxwindMph: json['maxwindMph'] as num?,
    );

Map<String, dynamic> _$$ForecastHourImplToJson(_$ForecastHourImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'avgtemp_c': instance.avgtempC,
      'condition': instance.weatherCondition,
      'humidity': instance.humidity,
      'uv': instance.uv,
      'windMph': instance.windMph,
      'avghumidity': instance.avghumidity,
      'maxwindMph': instance.maxwindMph,
    };
