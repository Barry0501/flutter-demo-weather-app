// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastDay {
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'hour')
  List<ForecastHour>? get forecastHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition => throw _privateConstructorUsedError;
  Day? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res, ForecastDay>;
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'hour') List<ForecastHour>? forecastHour,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
      Day? day});

  $WeatherConditionCopyWith<$Res>? get weatherCondition;
  $DayCopyWith<$Res>? get day;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res, $Val extends ForecastDay>
    implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? forecastHour = freezed,
    Object? weatherCondition = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      forecastHour: freezed == forecastHour
          ? _value.forecastHour
          : forecastHour // ignore: cast_nullable_to_non_nullable
              as List<ForecastHour>?,
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day?,
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

  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $DayCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayImplCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$$ForecastDayImplCopyWith(
          _$ForecastDayImpl value, $Res Function(_$ForecastDayImpl) then) =
      __$$ForecastDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'hour') List<ForecastHour>? forecastHour,
      @JsonKey(name: 'condition') WeatherCondition? weatherCondition,
      Day? day});

  @override
  $WeatherConditionCopyWith<$Res>? get weatherCondition;
  @override
  $DayCopyWith<$Res>? get day;
}

/// @nodoc
class __$$ForecastDayImplCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res, _$ForecastDayImpl>
    implements _$$ForecastDayImplCopyWith<$Res> {
  __$$ForecastDayImplCopyWithImpl(
      _$ForecastDayImpl _value, $Res Function(_$ForecastDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? forecastHour = freezed,
    Object? weatherCondition = freezed,
    Object? day = freezed,
  }) {
    return _then(_$ForecastDayImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      forecastHour: freezed == forecastHour
          ? _value._forecastHour
          : forecastHour // ignore: cast_nullable_to_non_nullable
              as List<ForecastHour>?,
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: false)
class _$ForecastDayImpl implements _ForecastDay {
  const _$ForecastDayImpl(
      {this.date,
      @JsonKey(name: 'hour') final List<ForecastHour>? forecastHour,
      @JsonKey(name: 'condition') this.weatherCondition,
      this.day})
      : _forecastHour = forecastHour;

  factory _$ForecastDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayImplFromJson(json);

  @override
  final String? date;
  final List<ForecastHour>? _forecastHour;
  @override
  @JsonKey(name: 'hour')
  List<ForecastHour>? get forecastHour {
    final value = _forecastHour;
    if (value == null) return null;
    if (_forecastHour is EqualUnmodifiableListView) return _forecastHour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'condition')
  final WeatherCondition? weatherCondition;
  @override
  final Day? day;

  @override
  String toString() {
    return 'ForecastDay(date: $date, forecastHour: $forecastHour, weatherCondition: $weatherCondition, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._forecastHour, _forecastHour) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_forecastHour),
      weatherCondition,
      day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      __$$ForecastDayImplCopyWithImpl<_$ForecastDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayImplToJson(
      this,
    );
  }
}

abstract class _ForecastDay implements ForecastDay {
  const factory _ForecastDay(
      {final String? date,
      @JsonKey(name: 'hour') final List<ForecastHour>? forecastHour,
      @JsonKey(name: 'condition') final WeatherCondition? weatherCondition,
      final Day? day}) = _$ForecastDayImpl;

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$ForecastDayImpl.fromJson;

  @override
  String? get date;
  @override
  @JsonKey(name: 'hour')
  List<ForecastHour>? get forecastHour;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition? get weatherCondition;
  @override
  Day? get day;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
