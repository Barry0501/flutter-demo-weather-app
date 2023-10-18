// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherConditionImpl _$$WeatherConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionImpl(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      code: (json['code'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherConditionImplToJson(
        _$WeatherConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
