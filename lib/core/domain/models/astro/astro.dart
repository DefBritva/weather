import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro.freezed.dart';

@freezed
class AstroWeather with _$AstroWeather {
  const AstroWeather._();
  const factory AstroWeather({
    required String sunrise,
    required String sunset,
  }) = _AstroWeather;
}
