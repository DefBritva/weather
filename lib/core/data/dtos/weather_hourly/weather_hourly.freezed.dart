// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_hourly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HourlyTempModelDTO {
  List<String> get timeList => throw _privateConstructorUsedError;
  List<int> get tempList => throw _privateConstructorUsedError;
  List<int> get codeList => throw _privateConstructorUsedError;
  List<bool> get isDay => throw _privateConstructorUsedError;
  double get dewPoint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HourlyTempModelDTOCopyWith<HourlyTempModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyTempModelDTOCopyWith<$Res> {
  factory $HourlyTempModelDTOCopyWith(
          HourlyTempModelDTO value, $Res Function(HourlyTempModelDTO) then) =
      _$HourlyTempModelDTOCopyWithImpl<$Res, HourlyTempModelDTO>;
  @useResult
  $Res call(
      {List<String> timeList,
      List<int> tempList,
      List<int> codeList,
      List<bool> isDay,
      double dewPoint});
}

/// @nodoc
class _$HourlyTempModelDTOCopyWithImpl<$Res, $Val extends HourlyTempModelDTO>
    implements $HourlyTempModelDTOCopyWith<$Res> {
  _$HourlyTempModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeList = null,
    Object? tempList = null,
    Object? codeList = null,
    Object? isDay = null,
    Object? dewPoint = null,
  }) {
    return _then(_value.copyWith(
      timeList: null == timeList
          ? _value.timeList
          : timeList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tempList: null == tempList
          ? _value.tempList
          : tempList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      codeList: null == codeList
          ? _value.codeList
          : codeList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyTempModelDTOImplCopyWith<$Res>
    implements $HourlyTempModelDTOCopyWith<$Res> {
  factory _$$HourlyTempModelDTOImplCopyWith(_$HourlyTempModelDTOImpl value,
          $Res Function(_$HourlyTempModelDTOImpl) then) =
      __$$HourlyTempModelDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> timeList,
      List<int> tempList,
      List<int> codeList,
      List<bool> isDay,
      double dewPoint});
}

/// @nodoc
class __$$HourlyTempModelDTOImplCopyWithImpl<$Res>
    extends _$HourlyTempModelDTOCopyWithImpl<$Res, _$HourlyTempModelDTOImpl>
    implements _$$HourlyTempModelDTOImplCopyWith<$Res> {
  __$$HourlyTempModelDTOImplCopyWithImpl(_$HourlyTempModelDTOImpl _value,
      $Res Function(_$HourlyTempModelDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeList = null,
    Object? tempList = null,
    Object? codeList = null,
    Object? isDay = null,
    Object? dewPoint = null,
  }) {
    return _then(_$HourlyTempModelDTOImpl(
      timeList: null == timeList
          ? _value._timeList
          : timeList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tempList: null == tempList
          ? _value._tempList
          : tempList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      codeList: null == codeList
          ? _value._codeList
          : codeList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isDay: null == isDay
          ? _value._isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HourlyTempModelDTOImpl extends _HourlyTempModelDTO
    with DiagnosticableTreeMixin {
  _$HourlyTempModelDTOImpl(
      {required final List<String> timeList,
      required final List<int> tempList,
      required final List<int> codeList,
      required final List<bool> isDay,
      required this.dewPoint})
      : _timeList = timeList,
        _tempList = tempList,
        _codeList = codeList,
        _isDay = isDay,
        super._();

  final List<String> _timeList;
  @override
  List<String> get timeList {
    if (_timeList is EqualUnmodifiableListView) return _timeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeList);
  }

  final List<int> _tempList;
  @override
  List<int> get tempList {
    if (_tempList is EqualUnmodifiableListView) return _tempList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempList);
  }

  final List<int> _codeList;
  @override
  List<int> get codeList {
    if (_codeList is EqualUnmodifiableListView) return _codeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codeList);
  }

  final List<bool> _isDay;
  @override
  List<bool> get isDay {
    if (_isDay is EqualUnmodifiableListView) return _isDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isDay);
  }

  @override
  final double dewPoint;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourlyTempModelDTO(timeList: $timeList, tempList: $tempList, codeList: $codeList, isDay: $isDay, dewPoint: $dewPoint)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourlyTempModelDTO'))
      ..add(DiagnosticsProperty('timeList', timeList))
      ..add(DiagnosticsProperty('tempList', tempList))
      ..add(DiagnosticsProperty('codeList', codeList))
      ..add(DiagnosticsProperty('isDay', isDay))
      ..add(DiagnosticsProperty('dewPoint', dewPoint));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyTempModelDTOImpl &&
            const DeepCollectionEquality().equals(other._timeList, _timeList) &&
            const DeepCollectionEquality().equals(other._tempList, _tempList) &&
            const DeepCollectionEquality().equals(other._codeList, _codeList) &&
            const DeepCollectionEquality().equals(other._isDay, _isDay) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_timeList),
      const DeepCollectionEquality().hash(_tempList),
      const DeepCollectionEquality().hash(_codeList),
      const DeepCollectionEquality().hash(_isDay),
      dewPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyTempModelDTOImplCopyWith<_$HourlyTempModelDTOImpl> get copyWith =>
      __$$HourlyTempModelDTOImplCopyWithImpl<_$HourlyTempModelDTOImpl>(
          this, _$identity);
}

abstract class _HourlyTempModelDTO extends HourlyTempModelDTO {
  factory _HourlyTempModelDTO(
      {required final List<String> timeList,
      required final List<int> tempList,
      required final List<int> codeList,
      required final List<bool> isDay,
      required final double dewPoint}) = _$HourlyTempModelDTOImpl;
  _HourlyTempModelDTO._() : super._();

  @override
  List<String> get timeList;
  @override
  List<int> get tempList;
  @override
  List<int> get codeList;
  @override
  List<bool> get isDay;
  @override
  double get dewPoint;
  @override
  @JsonKey(ignore: true)
  _$$HourlyTempModelDTOImplCopyWith<_$HourlyTempModelDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
