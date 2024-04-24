import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/domain/models/weather_hourly/weather_hourly.dart';

part 'weather_hourly.freezed.dart';

@freezed
class HourlyTempModelDTO with _$HourlyTempModelDTO {
  const HourlyTempModelDTO._();

  factory HourlyTempModelDTO({
    required List<String> timeList,
    required List<int> tempList,
    required List<int> codeList,
    required List<bool> isDay,
    required double dewPoint,
  }) = _HourlyTempModelDTO;

  factory HourlyTempModelDTO.fromJson(Map<String, dynamic> data) {
    final forecastday = data['forecast']['forecastday'] as List;
    final dayOneData = forecastday[0]['hour'] as List;
    final dayTwoData = forecastday[1]['hour'] as List;
    late double dewPoint;

    final currentTimeData = data['location']['localtime'] as String;
    final currentTime = int.parse(currentTimeData.substring(
        currentTimeData.length - 5, currentTimeData.length - 3));

    final weatherHourly = <int>[];
    final codeList = <int>[];
    final isDayList = <bool>[];
    final timeList = <String>[];

    for (var i = currentTime; i < dayOneData.length; i++) {
      final hourForecast = dayOneData[i] as Map<String, dynamic>;
      if (i == currentTime) {
        dewPoint = hourForecast['dewpoint_c'] as double;
      }

      final hourTemp = hourForecast['temp_c'] as double;
      final code = hourForecast['condition']['code'] as int;
      final isDay = hourForecast['is_day'] as int;
      final timeData = hourForecast['time'] as String;
      final time =
          i == currentTime ? 'Сейчас' : timeData.substring(timeData.length - 5);

      timeList.add(time);
      weatherHourly.add(hourTemp.round());
      codeList.add(code);
      if (isDay == 1) {
        isDayList.add(true);
      } else {
        isDayList.add(false);
      }
    }

    for (var i = 0; i < currentTime; i++) {
      final hourForecast = dayTwoData[i] as Map<String, dynamic>;
      final hourTemp = hourForecast['temp_c'] as double;
      final code = hourForecast['condition']['code'] as int;
      final isDay = hourForecast['is_day'] as int;
      final timeData = hourForecast['time'] as String;
      final time = timeData.substring(timeData.length - 5);
      timeList.add(time);
      weatherHourly.add(hourTemp.round());
      codeList.add(code);
      if (isDay == 1) {
        isDayList.add(true);
      } else {
        isDayList.add(false);
      }
    }
    return HourlyTempModelDTO(
        timeList: timeList,
        tempList: weatherHourly,
        codeList: codeList,
        isDay: isDayList,
        dewPoint: dewPoint);
  }

  HourlyTempModel toDomain() {
    return HourlyTempModel(
      timeList: timeList,
      tempList: tempList,
      codeList: codeList,
      isDay: isDay,
      dewPoint: dewPoint.round(),
    );
  }
}
