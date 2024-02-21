import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast.freezed.dart';

@freezed
class WeatherForecast with _$WeatherForecast {
  const WeatherForecast._();
  const factory WeatherForecast({
    // required String day,
    required int code,
    required int min,
    required int max,
    required double maxwindMph,
  }) = _WeatherForecast;
}
