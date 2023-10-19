// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      uv: json['uv'] as num?,
      humidity: json['humidity'] as num?,
      windMph: json['wind_mph'] as num?,
      maxwindMph: json['maxwind_mph'] as num?,
      avghumidity: json['avghumidity'] as num?,
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      weatherCondition: json['condition'] == null
          ? null
          : WeatherCondition.fromJson(
              json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'uv': instance.uv,
      'humidity': instance.humidity,
      'wind_mph': instance.windMph,
      'maxwind_mph': instance.maxwindMph,
      'avghumidity': instance.avghumidity,
      'avgtemp_c': instance.avgtempC,
      'condition': instance.weatherCondition,
    };
