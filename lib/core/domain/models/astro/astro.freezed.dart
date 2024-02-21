// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AstroWeather {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AstroWeatherCopyWith<AstroWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroWeatherCopyWith<$Res> {
  factory $AstroWeatherCopyWith(
          AstroWeather value, $Res Function(AstroWeather) then) =
      _$AstroWeatherCopyWithImpl<$Res, AstroWeather>;
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class _$AstroWeatherCopyWithImpl<$Res, $Val extends AstroWeather>
    implements $AstroWeatherCopyWith<$Res> {
  _$AstroWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroWeatherImplCopyWith<$Res>
    implements $AstroWeatherCopyWith<$Res> {
  factory _$$AstroWeatherImplCopyWith(
          _$AstroWeatherImpl value, $Res Function(_$AstroWeatherImpl) then) =
      __$$AstroWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class __$$AstroWeatherImplCopyWithImpl<$Res>
    extends _$AstroWeatherCopyWithImpl<$Res, _$AstroWeatherImpl>
    implements _$$AstroWeatherImplCopyWith<$Res> {
  __$$AstroWeatherImplCopyWithImpl(
      _$AstroWeatherImpl _value, $Res Function(_$AstroWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$AstroWeatherImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AstroWeatherImpl extends _AstroWeather {
  const _$AstroWeatherImpl({required this.sunrise, required this.sunset})
      : super._();

  @override
  final String sunrise;
  @override
  final String sunset;

  @override
  String toString() {
    return 'AstroWeather(sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroWeatherImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroWeatherImplCopyWith<_$AstroWeatherImpl> get copyWith =>
      __$$AstroWeatherImplCopyWithImpl<_$AstroWeatherImpl>(this, _$identity);
}

abstract class _AstroWeather extends AstroWeather {
  const factory _AstroWeather(
      {required final String sunrise,
      required final String sunset}) = _$AstroWeatherImpl;
  const _AstroWeather._() : super._();

  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  @JsonKey(ignore: true)
  _$$AstroWeatherImplCopyWith<_$AstroWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
