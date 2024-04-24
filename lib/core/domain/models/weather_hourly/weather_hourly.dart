import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_hourly.freezed.dart';

@freezed
class HourlyTempModel with _$HourlyTempModel {
  const HourlyTempModel._();

  factory HourlyTempModel({
    required List<String> timeList,
    required List<int> tempList,
    required List<int> codeList,
    required List<bool> isDay,
    required int dewPoint,
  }) = _HourlyTempModel;
}
