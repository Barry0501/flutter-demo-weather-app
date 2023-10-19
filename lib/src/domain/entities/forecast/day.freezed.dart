// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  num? get uv => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  num? get windMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_mph')
  num? get maxwindMph => throw _privateConstructorUsedError;
  num? get avghumidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {num? uv,
      num? humidity,
      @JsonKey(name: 'wind_mph') num? windMph,
      @JsonKey(name: 'maxwind_mph') num? maxwindMph,
      num? avghumidity,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition});

  $WeatherConditionCopyWith<$Res>? get weatherCondition;
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uv = freezed,
    Object? humidity = freezed,
    Object? windMph = freezed,
    Object? maxwindMph = freezed,
    Object? avghumidity = freezed,
    Object? avgtempC = freezed,
    Object? weatherCondition = freezed,
  }) {
    return _then(_value.copyWith(
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as num?,
      maxwindMph: freezed == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as num?,
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as num?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
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
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? uv,
      num? humidity,
      @JsonKey(name: 'wind_mph') num? windMph,
      @JsonKey(name: 'maxwind_mph') num? maxwindMph,
      num? avghumidity,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition});

  @override
  $WeatherConditionCopyWith<$Res>? get weatherCondition;
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uv = freezed,
    Object? humidity = freezed,
    Object? windMph = freezed,
    Object? maxwindMph = freezed,
    Object? avghumidity = freezed,
    Object? avgtempC = freezed,
    Object? weatherCondition = freezed,
  }) {
    return _then(_$DayImpl(
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as num?,
      maxwindMph: freezed == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as num?,
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as num?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: false)
class _$DayImpl implements _Day {
  const _$DayImpl(
      {this.uv,
      this.humidity,
      @JsonKey(name: 'wind_mph') this.windMph,
      @JsonKey(name: 'maxwind_mph') this.maxwindMph,
      this.avghumidity,
      @JsonKey(name: 'avgtemp_c') this.avgtempC,
      @JsonKey(name: 'condition') this.weatherCondition});

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  @override
  final num? uv;
  @override
  final num? humidity;
  @override
  @JsonKey(name: 'wind_mph')
  final num? windMph;
  @override
  @JsonKey(name: 'maxwind_mph')
  final num? maxwindMph;
  @override
  final num? avghumidity;
  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgtempC;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition? weatherCondition;

  @override
  String toString() {
    return 'Day(uv: $uv, humidity: $humidity, windMph: $windMph, maxwindMph: $maxwindMph, avghumidity: $avghumidity, avgtempC: $avgtempC, weatherCondition: $weatherCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.maxwindMph, maxwindMph) ||
                other.maxwindMph == maxwindMph) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uv, humidity, windMph,
      maxwindMph, avghumidity, avgtempC, weatherCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {final num? uv,
      final num? humidity,
      @JsonKey(name: 'wind_mph') final num? windMph,
      @JsonKey(name: 'maxwind_mph') final num? maxwindMph,
      final num? avghumidity,
      @JsonKey(name: 'avgtemp_c') final double? avgtempC,
      @JsonKey(name: 'condition')
      final WeatherCondition? weatherCondition}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  num? get uv;
  @override
  num? get humidity;
  @override
  @JsonKey(name: 'wind_mph')
  num? get windMph;
  @override
  @JsonKey(name: 'maxwind_mph')
  num? get maxwindMph;
  @override
  num? get avghumidity;
  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition;
  @override
  @JsonKey(ignore: true)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
