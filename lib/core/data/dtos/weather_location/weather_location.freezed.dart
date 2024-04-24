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
mixin _$WeatherLocationDTO {
  String get location => throw _privateConstructorUsedError;
  CurrentWeatherDTO get currentWeather => throw _privateConstructorUsedError;
  HourlyTempModelDTO get tempModel => throw _privateConstructorUsedError;
  List<WeatherForecastDTO> get weatherForecast =>
      throw _privateConstructorUsedError;
  AstroWeatherDTO get astroWeather => throw _privateConstructorUsedError;
  int get currentTime => throw _privateConstructorUsedError;
  String get localTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherLocationDTOCopyWith<WeatherLocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherLocationDTOCopyWith<$Res> {
  factory $WeatherLocationDTOCopyWith(
          WeatherLocationDTO value, $Res Function(WeatherLocationDTO) then) =
      _$WeatherLocationDTOCopyWithImpl<$Res, WeatherLocationDTO>;
  @useResult
  $Res call(
      {String location,
      CurrentWeatherDTO currentWeather,
      HourlyTempModelDTO tempModel,
      List<WeatherForecastDTO> weatherForecast,
      AstroWeatherDTO astroWeather,
      int currentTime,
      String localTime});

  $CurrentWeatherDTOCopyWith<$Res> get currentWeather;
  $HourlyTempModelDTOCopyWith<$Res> get tempModel;
  $AstroWeatherDTOCopyWith<$Res> get astroWeather;
}

/// @nodoc
class _$WeatherLocationDTOCopyWithImpl<$Res, $Val extends WeatherLocationDTO>
    implements $WeatherLocationDTOCopyWith<$Res> {
  _$WeatherLocationDTOCopyWithImpl(this._value, this._then);

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
              as CurrentWeatherDTO,
      tempModel: null == tempModel
          ? _value.tempModel
          : tempModel // ignore: cast_nullable_to_non_nullable
              as HourlyTempModelDTO,
      weatherForecast: null == weatherForecast
          ? _value.weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDTO>,
      astroWeather: null == astroWeather
          ? _value.astroWeather
          : astroWeather // ignore: cast_nullable_to_non_nullable
              as AstroWeatherDTO,
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
  $CurrentWeatherDTOCopyWith<$Res> get currentWeather {
    return $CurrentWeatherDTOCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyTempModelDTOCopyWith<$Res> get tempModel {
    return $HourlyTempModelDTOCopyWith<$Res>(_value.tempModel, (value) {
      return _then(_value.copyWith(tempModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroWeatherDTOCopyWith<$Res> get astroWeather {
    return $AstroWeatherDTOCopyWith<$Res>(_value.astroWeather, (value) {
      return _then(_value.copyWith(astroWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherLocationDTOImplCopyWith<$Res>
    implements $WeatherLocationDTOCopyWith<$Res> {
  factory _$$WeatherLocationDTOImplCopyWith(_$WeatherLocationDTOImpl value,
          $Res Function(_$WeatherLocationDTOImpl) then) =
      __$$WeatherLocationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location,
      CurrentWeatherDTO currentWeather,
      HourlyTempModelDTO tempModel,
      List<WeatherForecastDTO> weatherForecast,
      AstroWeatherDTO astroWeather,
      int currentTime,
      String localTime});

  @override
  $CurrentWeatherDTOCopyWith<$Res> get currentWeather;
  @override
  $HourlyTempModelDTOCopyWith<$Res> get tempModel;
  @override
  $AstroWeatherDTOCopyWith<$Res> get astroWeather;
}

/// @nodoc
class __$$WeatherLocationDTOImplCopyWithImpl<$Res>
    extends _$WeatherLocationDTOCopyWithImpl<$Res, _$WeatherLocationDTOImpl>
    implements _$$WeatherLocationDTOImplCopyWith<$Res> {
  __$$WeatherLocationDTOImplCopyWithImpl(_$WeatherLocationDTOImpl _value,
      $Res Function(_$WeatherLocationDTOImpl) _then)
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
    return _then(_$WeatherLocationDTOImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherDTO,
      tempModel: null == tempModel
          ? _value.tempModel
          : tempModel // ignore: cast_nullable_to_non_nullable
              as HourlyTempModelDTO,
      weatherForecast: null == weatherForecast
          ? _value._weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDTO>,
      astroWeather: null == astroWeather
          ? _value.astroWeather
          : astroWeather // ignore: cast_nullable_to_non_nullable
              as AstroWeatherDTO,
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

class _$WeatherLocationDTOImpl extends _WeatherLocationDTO {
  const _$WeatherLocationDTOImpl(
      {required this.location,
      required this.currentWeather,
      required this.tempModel,
      required final List<WeatherForecastDTO> weatherForecast,
      required this.astroWeather,
      required this.currentTime,
      required this.localTime})
      : _weatherForecast = weatherForecast,
        super._();

  @override
  final String location;
  @override
  final CurrentWeatherDTO currentWeather;
  @override
  final HourlyTempModelDTO tempModel;
  final List<WeatherForecastDTO> _weatherForecast;
  @override
  List<WeatherForecastDTO> get weatherForecast {
    if (_weatherForecast is EqualUnmodifiableListView) return _weatherForecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherForecast);
  }

  @override
  final AstroWeatherDTO astroWeather;
  @override
  final int currentTime;
  @override
  final String localTime;

  @override
  String toString() {
    return 'WeatherLocationDTO(location: $location, currentWeather: $currentWeather, tempModel: $tempModel, weatherForecast: $weatherForecast, astroWeather: $astroWeather, currentTime: $currentTime, localTime: $localTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLocationDTOImpl &&
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
  _$$WeatherLocationDTOImplCopyWith<_$WeatherLocationDTOImpl> get copyWith =>
      __$$WeatherLocationDTOImplCopyWithImpl<_$WeatherLocationDTOImpl>(
          this, _$identity);
}

abstract class _WeatherLocationDTO extends WeatherLocationDTO {
  const factory _WeatherLocationDTO(
      {required final String location,
      required final CurrentWeatherDTO currentWeather,
      required final HourlyTempModelDTO tempModel,
      required final List<WeatherForecastDTO> weatherForecast,
      required final AstroWeatherDTO astroWeather,
      required final int currentTime,
      required final String localTime}) = _$WeatherLocationDTOImpl;
  const _WeatherLocationDTO._() : super._();

  @override
  String get location;
  @override
  CurrentWeatherDTO get currentWeather;
  @override
  HourlyTempModelDTO get tempModel;
  @override
  List<WeatherForecastDTO> get weatherForecast;
  @override
  AstroWeatherDTO get astroWeather;
  @override
  int get currentTime;
  @override
  String get localTime;
  @override
  @JsonKey(ignore: true)
  _$$WeatherLocationDTOImplCopyWith<_$WeatherLocationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
