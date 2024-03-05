import 'package:flutter/material.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/utils/weather_image.dart';

class WeatherImageWidget extends StatelessWidget {
  final int code;
  final DayTimes dayTimes;

  const WeatherImageWidget({
    super.key,
    required this.code,
    required this.dayTimes,
  });

  @override
  Widget build(BuildContext context) {
    return (dayTimes == DayTimes.day)
        ? Image.asset(
            dayImage(code),
          )
        : Image.asset(
            nightImage(code),
          );
  }
}
