// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherLocation {
  String get location => throw _privateConstructorUsedError;
  CurrentWeather get currentWeather => throw _privateConstructorUsedError;
  HourlyTempModel get tempModel => throw _privateConstructorUsedError;
  List<WeatherForecast> get weatherForecast =>
      throw _privateConstructorUsedError;
  AstroWeather get astroWeather => throw _privateConstructorUsedError;
  int get currentTime => throw _privateConstructorUsedError;
  String get localTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherLocationCopyWith<WeatherLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherLocationCopyWith<$Res> {
  factory $WeatherLocationCopyWith(
          WeatherLocation value, $Res Function(WeatherLocation) then) =
      _$WeatherLocationCopyWithImpl<$Res, WeatherLocation>;
  @useResult
  $Res call(
      {String location,
      CurrentWeather currentWeather,
      HourlyTempModel tempModel,
      List<WeatherForecast> weatherForecast,
      AstroWeather astroWeather,
      int currentTime,
      String localTime});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
  $HourlyTempModelCopyWith<$Res> get tempModel;
  $AstroWeatherCopyWith<$Res> get astroWeather;
}

/// @nodoc
class _$WeatherLocationCopyWithImpl<$Res, $Val extends WeatherLocation>
    implements $WeatherLocationCopyWith<$Res> {
  _$WeatherLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? currentWeather = null,
    Object? tempModel = null,
    Object? weatherForecast = null,
    Object? astroWeather = null,
    Object? currentTime = null,
    Object? localTime = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      tempModel: null == tempModel
          ? _value.tempModel
          : tempModel // ignore: cast_nullable_to_non_nullable
              as HourlyTempModel,
      weatherForecast: null == weatherForecast
          ? _value.weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecast>,
      astroWeather: null == astroWeather
          ? _value.astroWeather
          : astroWeather // ignore: cast_nullable_to_non_nullable
              as AstroWeather,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      localTime: null == localTime
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyTempModelCopyWith<$Res> get tempModel {
    return $HourlyTempModelCopyWith<$Res>(_value.tempModel, (value) {
      return _then(_value.copyWith(tempModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroWeatherCopyWith<$Res> get astroWeather {
    return $AstroWeatherCopyWith<$Res>(_value.astroWeather, (value) {
      return _then(_value.copyWith(astroWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherLocationImplCopyWith<$Res>
    implements $WeatherLocationCopyWith<$Res> {
  factory _$$WeatherLocationImplCopyWith(_$WeatherLocationImpl value,
          $Res Function(_$WeatherLocationImpl) then) =
      __$$WeatherLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location,
      CurrentWeather currentWeather,
      HourlyTempModel tempModel,
      List<WeatherForecast> weatherForecast,
      AstroWeather astroWeather,
      int currentTime,
      String localTime});

  @override
  $CurrentWeatherCopyWith<$Res> get currentWeather;
  @override
  $HourlyTempModelCopyWith<$Res> get tempModel;
  @override
  $AstroWeatherCopyWith<$Res> get astroWeather;
}

/// @nodoc
class __$$WeatherLocationImplCopyWithImpl<$Res>
    extends _$WeatherLocationCopyWithImpl<$Res, _$WeatherLocationImpl>
    implements _$$WeatherLocationImplCopyWith<$Res> {
  __$$WeatherLocationImplCopyWithImpl(
      _$WeatherLocationImpl _value, $Res Function(_$WeatherLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? currentWeather = null,
    Object? tempModel = null,
    Object? weatherForecast = null,
    Object? astroWeather = null,
    Object? currentTime = null,
    Object? localTime = null,
  }) {
    return _then(_$WeatherLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      tempModel: null == tempModel
          ? _value.tempModel
          : tempModel // ignore: cast_nullable_to_non_nullable
              as HourlyTempModel,
      weatherForecast: null == weatherForecast
          ? _value._weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecast>,
      astroWeather: null == astroWeather
          ? _value.astroWeather
          : astroWeather // ignore: cast_nullable_to_non_nullable
              as AstroWeather,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      localTime: null == localTime
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherLocationImpl extends _WeatherLocation {
  const _$WeatherLocationImpl(
      {required this.location,
      required this.currentWeather,
      required this.tempModel,
      required final List<WeatherForecast> weatherForecast,
      required this.astroWeather,
      required this.currentTime,
      required this.localTime})
      : _weatherForecast = weatherForecast,
        super._();

  @override
  final String location;
  @override
  final CurrentWeather currentWeather;
  @override
  final HourlyTempModel tempModel;
  final List<WeatherForecast> _weatherForecast;
  @override
  List<WeatherForecast> get weatherForecast {
    if (_weatherForecast is EqualUnmodifiableListView) return _weatherForecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherForecast);
  }

  @override
  final AstroWeather astroWeather;
  @override
  final int currentTime;
  @override
  final String localTime;

  @override
  String toString() {
    return 'WeatherLocation(location: $location, currentWeather: $currentWeather, tempModel: $tempModel, weatherForecast: $weatherForecast, astroWeather: $astroWeather, currentTime: $currentTime, localTime: $localTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.tempModel, tempModel) ||
                other.tempModel == tempModel) &&
            const DeepCollectionEquality()
                .equals(other._weatherForecast, _weatherForecast) &&
            (identical(other.astroWeather, astroWeather) ||
                other.astroWeather == astroWeather) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.localTime, localTime) ||
                other.localTime == localTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      currentWeather,
      tempModel,
      const DeepCollectionEquality().hash(_weatherForecast),
      astroWeather,
      currentTime,
      localTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLocationImplCopyWith<_$WeatherLocationImpl> get copyWith =>
      __$$WeatherLocationImplCopyWithImpl<_$WeatherLocationImpl>(
          this, _$identity);
}

abstract class _WeatherLocation extends WeatherLocation {
  const factory _WeatherLocation(
      {required final String location,
      required final CurrentWeather currentWeather,
      required final HourlyTempModel tempModel,
      required final List<WeatherForecast> weatherForecast,
      required final AstroWeather astroWeather,
      required final int currentTime,
      required final String localTime}) = _$WeatherLocationImpl;
  const _WeatherLocation._() : super._();

  @override
  String get location;
  @override
  CurrentWeather get currentWeather;
  @override
  HourlyTempModel get tempModel;
  @override
  List<WeatherForecast> get weatherForecast;
  @override
  AstroWeather get astroWeather;
  @override
  int get currentTime;
  @override
  String get localTime;
  @override
  @JsonKey(ignore: true)
  _$$WeatherLocationImplCopyWith<_$WeatherLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
