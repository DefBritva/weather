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

/// @nodoc
mixin _$CurrentWeather {
  int get temp => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get weatherConditionCode => throw _privateConstructorUsedError;
  DayTimes get dayTimes => throw _privateConstructorUsedError;
  int get windMps => throw _privateConstructorUsedError;
  int get feelslike => throw _privateConstructorUsedError;
  int get visibilityKm => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

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
      {int temp,
      String description,
      int weatherConditionCode,
      DayTimes dayTimes,
      int windMps,
      int feelslike,
      int visibilityKm,
      int humidity});
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
    Object? temp = null,
    Object? description = null,
    Object? weatherConditionCode = null,
    Object? dayTimes = null,
    Object? windMps = null,
    Object? feelslike = null,
    Object? visibilityKm = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weatherConditionCode: null == weatherConditionCode
          ? _value.weatherConditionCode
          : weatherConditionCode // ignore: cast_nullable_to_non_nullable
              as int,
      dayTimes: null == dayTimes
          ? _value.dayTimes
          : dayTimes // ignore: cast_nullable_to_non_nullable
              as DayTimes,
      windMps: null == windMps
          ? _value.windMps
          : windMps // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike: null == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int,
      visibilityKm: null == visibilityKm
          ? _value.visibilityKm
          : visibilityKm // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
      {int temp,
      String description,
      int weatherConditionCode,
      DayTimes dayTimes,
      int windMps,
      int feelslike,
      int visibilityKm,
      int humidity});
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
    Object? temp = null,
    Object? description = null,
    Object? weatherConditionCode = null,
    Object? dayTimes = null,
    Object? windMps = null,
    Object? feelslike = null,
    Object? visibilityKm = null,
    Object? humidity = null,
  }) {
    return _then(_$CurrentWeatherImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weatherConditionCode: null == weatherConditionCode
          ? _value.weatherConditionCode
          : weatherConditionCode // ignore: cast_nullable_to_non_nullable
              as int,
      dayTimes: null == dayTimes
          ? _value.dayTimes
          : dayTimes // ignore: cast_nullable_to_non_nullable
              as DayTimes,
      windMps: null == windMps
          ? _value.windMps
          : windMps // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike: null == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int,
      visibilityKm: null == visibilityKm
          ? _value.visibilityKm
          : visibilityKm // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurrentWeatherImpl extends _CurrentWeather {
  const _$CurrentWeatherImpl(
      {required this.temp,
      required this.description,
      required this.weatherConditionCode,
      required this.dayTimes,
      required this.windMps,
      required this.feelslike,
      required this.visibilityKm,
      required this.humidity})
      : super._();

  @override
  final int temp;
  @override
  final String description;
  @override
  final int weatherConditionCode;
  @override
  final DayTimes dayTimes;
  @override
  final int windMps;
  @override
  final int feelslike;
  @override
  final int visibilityKm;
  @override
  final int humidity;

  @override
  String toString() {
    return 'CurrentWeather(temp: $temp, description: $description, weatherConditionCode: $weatherConditionCode, dayTimes: $dayTimes, windMps: $windMps, feelslike: $feelslike, visibilityKm: $visibilityKm, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weatherConditionCode, weatherConditionCode) ||
                other.weatherConditionCode == weatherConditionCode) &&
            (identical(other.dayTimes, dayTimes) ||
                other.dayTimes == dayTimes) &&
            (identical(other.windMps, windMps) || other.windMps == windMps) &&
            (identical(other.feelslike, feelslike) ||
                other.feelslike == feelslike) &&
            (identical(other.visibilityKm, visibilityKm) ||
                other.visibilityKm == visibilityKm) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      temp,
      description,
      weatherConditionCode,
      dayTimes,
      windMps,
      feelslike,
      visibilityKm,
      humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);
}

abstract class _CurrentWeather extends CurrentWeather {
  const factory _CurrentWeather(
      {required final int temp,
      required final String description,
      required final int weatherConditionCode,
      required final DayTimes dayTimes,
      required final int windMps,
      required final int feelslike,
      required final int visibilityKm,
      required final int humidity}) = _$CurrentWeatherImpl;
  const _CurrentWeather._() : super._();

  @override
  int get temp;
  @override
  String get description;
  @override
  int get weatherConditionCode;
  @override
  DayTimes get dayTimes;
  @override
  int get windMps;
  @override
  int get feelslike;
  @override
  int get visibilityKm;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
