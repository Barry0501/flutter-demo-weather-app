// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_hour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastHour _$ForecastHourFromJson(Map<String, dynamic> json) {
  return _ForecastHour.fromJson(json);
}

/// @nodoc
mixin _$ForecastHour {
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double? get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double? get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;
  num? get uv => throw _privateConstructorUsedError;
  num? get windMph => throw _privateConstructorUsedError;
  num? get avghumidity => throw _privateConstructorUsedError;
  num? get maxwindMph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastHourCopyWith<ForecastHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastHourCopyWith<$Res> {
  factory $ForecastHourCopyWith(
          ForecastHour value, $Res Function(ForecastHour) then) =
      _$ForecastHourCopyWithImpl<$Res, ForecastHour>;
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') double? tempF,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
      num? humidity,
      num? uv,
      num? windMph,
      num? avghumidity,
      num? maxwindMph});

  $WeatherConditionCopyWith<$Res>? get weatherCondition;
}

/// @nodoc
class _$ForecastHourCopyWithImpl<$Res, $Val extends ForecastHour>
    implements $ForecastHourCopyWith<$Res> {
  _$ForecastHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? avgtempC = freezed,
    Object? weatherCondition = freezed,
    Object? humidity = freezed,
    Object? uv = freezed,
    Object? windMph = freezed,
    Object? avghumidity = freezed,
    Object? maxwindMph = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
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
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as num?,
      maxwindMph: freezed == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ForecastHourImplCopyWith<$Res>
    implements $ForecastHourCopyWith<$Res> {
  factory _$$ForecastHourImplCopyWith(
          _$ForecastHourImpl value, $Res Function(_$ForecastHourImpl) then) =
      __$$ForecastHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') double? tempF,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
      num? humidity,
      num? uv,
      num? windMph,
      num? avghumidity,
      num? maxwindMph});

  @override
  $WeatherConditionCopyWith<$Res>? get weatherCondition;
}

/// @nodoc
class __$$ForecastHourImplCopyWithImpl<$Res>
    extends _$ForecastHourCopyWithImpl<$Res, _$ForecastHourImpl>
    implements _$$ForecastHourImplCopyWith<$Res> {
  __$$ForecastHourImplCopyWithImpl(
      _$ForecastHourImpl _value, $Res Function(_$ForecastHourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? avgtempC = freezed,
    Object? weatherCondition = freezed,
    Object? humidity = freezed,
    Object? uv = freezed,
    Object? windMph = freezed,
    Object? avghumidity = freezed,
    Object? maxwindMph = freezed,
  }) {
    return _then(_$ForecastHourImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
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
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as num?,
      maxwindMph: freezed == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: false)
class _$ForecastHourImpl implements _ForecastHour {
  const _$ForecastHourImpl(
      {this.time,
      @JsonKey(name: 'temp_c') this.tempC,
      @JsonKey(name: 'temp_f') this.tempF,
      @JsonKey(name: 'avgtemp_c') this.avgtempC,
      @JsonKey(name: 'condition') this.weatherCondition,
      this.humidity,
      this.uv,
      this.windMph,
      this.avghumidity,
      this.maxwindMph});

  factory _$ForecastHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastHourImplFromJson(json);

  @override
  final String? time;
  @override
  @JsonKey(name: 'temp_c')
  final double? tempC;
  @override
  @JsonKey(name: 'temp_f')
  final double? tempF;
  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgtempC;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition? weatherCondition;
  @override
  final num? humidity;
  @override
  final num? uv;
  @override
  final num? windMph;
  @override
  final num? avghumidity;
  @override
  final num? maxwindMph;

  @override
  String toString() {
    return 'ForecastHour(time: $time, tempC: $tempC, tempF: $tempF, avgtempC: $avgtempC, weatherCondition: $weatherCondition, humidity: $humidity, uv: $uv, windMph: $windMph, avghumidity: $avghumidity, maxwindMph: $maxwindMph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastHourImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.maxwindMph, maxwindMph) ||
                other.maxwindMph == maxwindMph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, tempC, tempF, avgtempC,
      weatherCondition, humidity, uv, windMph, avghumidity, maxwindMph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastHourImplCopyWith<_$ForecastHourImpl> get copyWith =>
      __$$ForecastHourImplCopyWithImpl<_$ForecastHourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastHourImplToJson(
      this,
    );
  }
}

abstract class _ForecastHour implements ForecastHour {
  const factory _ForecastHour(
      {final String? time,
      @JsonKey(name: 'temp_c') final double? tempC,
      @JsonKey(name: 'temp_f') final double? tempF,
      @JsonKey(name: 'avgtemp_c') final double? avgtempC,
      @JsonKey(name: 'condition') final WeatherCondition? weatherCondition,
      final num? humidity,
      final num? uv,
      final num? windMph,
      final num? avghumidity,
      final num? maxwindMph}) = _$ForecastHourImpl;

  factory _ForecastHour.fromJson(Map<String, dynamic> json) =
      _$ForecastHourImpl.fromJson;

  @override
  String? get time;
  @override
  @JsonKey(name: 'temp_c')
  double? get tempC;
  @override
  @JsonKey(name: 'temp_f')
  double? get tempF;
  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition;
  @override
  num? get humidity;
  @override
  num? get uv;
  @override
  num? get windMph;
  @override
  num? get avghumidity;
  @override
  num? get maxwindMph;
  @override
  @JsonKey(ignore: true)
  _$$ForecastHourImplCopyWith<_$ForecastHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
