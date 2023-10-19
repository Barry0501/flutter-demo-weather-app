// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  @JsonKey(name: 'last_updated')
  String? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double? get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double? get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int? get isDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;
  num? get uv => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  num? get windMph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated') String? lastUpdated,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') double? tempF,
      @JsonKey(name: 'is_day') int? isDay,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
      num? humidity,
      num? uv,
      @JsonKey(name: 'wind_mph') num? windMph});

  $WeatherConditionCopyWith<$Res>? get weatherCondition;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isDay = freezed,
    Object? weatherCondition = freezed,
    Object? humidity = freezed,
    Object? uv = freezed,
    Object? windMph = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res>? get weatherCondition {
    if (_value.weatherCondition == null) {
      return null;
    }

    return $WeatherConditionCopyWith<$Res>(_value.weatherCondition!, (value) {
      return _then(_value.copyWith(weatherCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeatherImplCopyWith(_$CurrentWeatherImpl value,
          $Res Function(_$CurrentWeatherImpl) then) =
      __$$CurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated') String? lastUpdated,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') double? tempF,
      @JsonKey(name: 'is_day') int? isDay,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
      num? humidity,
      num? uv,
      @JsonKey(name: 'wind_mph') num? windMph});

  @override
  $WeatherConditionCopyWith<$Res>? get weatherCondition;
}

/// @nodoc
class __$$CurrentWeatherImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeatherImpl>
    implements _$$CurrentWeatherImplCopyWith<$Res> {
  __$$CurrentWeatherImplCopyWithImpl(
      _$CurrentWeatherImpl _value, $Res Function(_$CurrentWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isDay = freezed,
    Object? weatherCondition = freezed,
    Object? humidity = freezed,
    Object? uv = freezed,
    Object? windMph = freezed,
  }) {
    return _then(_$CurrentWeatherImpl(
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: false)
class _$CurrentWeatherImpl implements _CurrentWeather {
  const _$CurrentWeatherImpl(
      {@JsonKey(name: 'last_updated') this.lastUpdated,
      @JsonKey(name: 'temp_c') this.tempC,
      @JsonKey(name: 'temp_f') this.tempF,
      @JsonKey(name: 'is_day') this.isDay,
      @JsonKey(name: 'condition') this.weatherCondition,
      this.humidity,
      this.uv,
      @JsonKey(name: 'wind_mph') this.windMph});

  factory _$CurrentWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherImplFromJson(json);

  @override
  @JsonKey(name: 'last_updated')
  final String? lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  final double? tempC;
  @override
  @JsonKey(name: 'temp_f')
  final double? tempF;
  @override
  @JsonKey(name: 'is_day')
  final int? isDay;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition? weatherCondition;
  @override
  final num? humidity;
  @override
  final num? uv;
  @override
  @JsonKey(name: 'wind_mph')
  final num? windMph;

  @override
  String toString() {
    return 'CurrentWeather(lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, weatherCondition: $weatherCondition, humidity: $humidity, uv: $uv, windMph: $windMph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.windMph, windMph) || other.windMph == windMph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdated, tempC, tempF, isDay,
      weatherCondition, humidity, uv, windMph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {@JsonKey(name: 'last_updated') final String? lastUpdated,
      @JsonKey(name: 'temp_c') final double? tempC,
      @JsonKey(name: 'temp_f') final double? tempF,
      @JsonKey(name: 'is_day') final int? isDay,
      @JsonKey(name: 'condition') final WeatherCondition? weatherCondition,
      final num? humidity,
      final num? uv,
      @JsonKey(name: 'wind_mph') final num? windMph}) = _$CurrentWeatherImpl;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherImpl.fromJson;

  @override
  @JsonKey(name: 'last_updated')
  String? get lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  double? get tempC;
  @override
  @JsonKey(name: 'temp_f')
  double? get tempF;
  @override
  @JsonKey(name: 'is_day')
  int? get isDay;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition;
  @override
  num? get humidity;
  @override
  num? get uv;
  @override
  @JsonKey(name: 'wind_mph')
  num? get windMph;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
