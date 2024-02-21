// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherForecastDTO {
  String get day => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get maxwindMph => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherForecastDTOCopyWith<WeatherForecastDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastDTOCopyWith<$Res> {
  factory $WeatherForecastDTOCopyWith(
          WeatherForecastDTO value, $Res Function(WeatherForecastDTO) then) =
      _$WeatherForecastDTOCopyWithImpl<$Res, WeatherForecastDTO>;
  @useResult
  $Res call({String day, int code, double min, double max, double maxwindMph});
}

/// @nodoc
class _$WeatherForecastDTOCopyWithImpl<$Res, $Val extends WeatherForecastDTO>
    implements $WeatherForecastDTOCopyWith<$Res> {
  _$WeatherForecastDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? code = null,
    Object? min = null,
    Object? max = null,
    Object? maxwindMph = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      maxwindMph: null == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastDTOImplCopyWith<$Res>
    implements $WeatherForecastDTOCopyWith<$Res> {
  factory _$$WeatherForecastDTOImplCopyWith(_$WeatherForecastDTOImpl value,
          $Res Function(_$WeatherForecastDTOImpl) then) =
      __$$WeatherForecastDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, int code, double min, double max, double maxwindMph});
}

/// @nodoc
class __$$WeatherForecastDTOImplCopyWithImpl<$Res>
    extends _$WeatherForecastDTOCopyWithImpl<$Res, _$WeatherForecastDTOImpl>
    implements _$$WeatherForecastDTOImplCopyWith<$Res> {
  __$$WeatherForecastDTOImplCopyWithImpl(_$WeatherForecastDTOImpl _value,
      $Res Function(_$WeatherForecastDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? code = null,
    Object? min = null,
    Object? max = null,
    Object? maxwindMph = null,
  }) {
    return _then(_$WeatherForecastDTOImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      maxwindMph: null == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$WeatherForecastDTOImpl extends _WeatherForecastDTO {
  const _$WeatherForecastDTOImpl(
      {required this.day,
      required this.code,
      required this.min,
      required this.max,
      required this.maxwindMph})
      : super._();

  @override
  final String day;
  @override
  final int code;
  @override
  final double min;
  @override
  final double max;
  @override
  final double maxwindMph;

  @override
  String toString() {
    return 'WeatherForecastDTO(day: $day, code: $code, min: $min, max: $max, maxwindMph: $maxwindMph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastDTOImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxwindMph, maxwindMph) ||
                other.maxwindMph == maxwindMph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, code, min, max, maxwindMph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastDTOImplCopyWith<_$WeatherForecastDTOImpl> get copyWith =>
      __$$WeatherForecastDTOImplCopyWithImpl<_$WeatherForecastDTOImpl>(
          this, _$identity);
}

abstract class _WeatherForecastDTO extends WeatherForecastDTO {
  const factory _WeatherForecastDTO(
      {required final String day,
      required final int code,
      required final double min,
      required final double max,
      required final double maxwindMph}) = _$WeatherForecastDTOImpl;
  const _WeatherForecastDTO._() : super._();

  @override
  String get day;
  @override
  int get code;
  @override
  double get min;
  @override
  double get max;
  @override
  double get maxwindMph;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastDTOImplCopyWith<_$WeatherForecastDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
