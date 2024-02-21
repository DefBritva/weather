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
mixin _$AstroWeatherDTO {
  String get sunrise => throw _privateConstructorUsedError;
  set sunrise(String value) => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  set sunset(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AstroWeatherDTOCopyWith<AstroWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroWeatherDTOCopyWith<$Res> {
  factory $AstroWeatherDTOCopyWith(
          AstroWeatherDTO value, $Res Function(AstroWeatherDTO) then) =
      _$AstroWeatherDTOCopyWithImpl<$Res, AstroWeatherDTO>;
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class _$AstroWeatherDTOCopyWithImpl<$Res, $Val extends AstroWeatherDTO>
    implements $AstroWeatherDTOCopyWith<$Res> {
  _$AstroWeatherDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$AstroWeatherDTOImplCopyWith<$Res>
    implements $AstroWeatherDTOCopyWith<$Res> {
  factory _$$AstroWeatherDTOImplCopyWith(_$AstroWeatherDTOImpl value,
          $Res Function(_$AstroWeatherDTOImpl) then) =
      __$$AstroWeatherDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class __$$AstroWeatherDTOImplCopyWithImpl<$Res>
    extends _$AstroWeatherDTOCopyWithImpl<$Res, _$AstroWeatherDTOImpl>
    implements _$$AstroWeatherDTOImplCopyWith<$Res> {
  __$$AstroWeatherDTOImplCopyWithImpl(
      _$AstroWeatherDTOImpl _value, $Res Function(_$AstroWeatherDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$AstroWeatherDTOImpl(
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

class _$AstroWeatherDTOImpl extends _AstroWeatherDTO {
  _$AstroWeatherDTOImpl({required this.sunrise, required this.sunset})
      : super._();

  @override
  String sunrise;
  @override
  String sunset;

  @override
  String toString() {
    return 'AstroWeatherDTO(sunrise: $sunrise, sunset: $sunset)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroWeatherDTOImplCopyWith<_$AstroWeatherDTOImpl> get copyWith =>
      __$$AstroWeatherDTOImplCopyWithImpl<_$AstroWeatherDTOImpl>(
          this, _$identity);
}

abstract class _AstroWeatherDTO extends AstroWeatherDTO {
  factory _AstroWeatherDTO({required String sunrise, required String sunset}) =
      _$AstroWeatherDTOImpl;
  _AstroWeatherDTO._() : super._();

  @override
  String get sunrise;
  set sunrise(String value);
  @override
  String get sunset;
  set sunset(String value);
  @override
  @JsonKey(ignore: true)
  _$$AstroWeatherDTOImplCopyWith<_$AstroWeatherDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
