import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';

class BackgroundBlurWidget extends StatelessWidget {
  final int code;
  final DayTimes dayTimes;
  final List<Color>? colors;

  const BackgroundBlurWidget({
    super.key,
    required this.code,
    required this.dayTimes,
    this.colors,
  });

  List<Color> getBackgroundBlurColors(int code, DayTimes dayTimes) {
    final List<Color> dayWeatherBlur = switch (code) {
      1000 => [Colors.blue, Colors.deepPurpleAccent],
      _ => [Colors.blue.shade900, Colors.deepPurpleAccent]
    };

    final List<Color> nightWeatherBlur = [
      const Color.fromARGB(255, 2, 26, 62),
      Colors.deepPurpleAccent
    ];
    if (colors == null) {
      return dayTimes == DayTimes.day ? dayWeatherBlur : nightWeatherBlur;
    } else {
      return colors ?? [Colors.white, Colors.white];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return state.maybeWhen(
            main: (locations, weekdays, currentLocation) {
              // final int currentIndex =
              //     context.watch<WeatherBloc>().state.currentLocation;
              // final int code = state
              //     .locations[currentIndex].currentWeather.weatherConditionCode;
              // final dayTimes =
              //     state.locations[currentIndex].currentWeather.dayTimes;

              return Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, -1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.99,
                      decoration: BoxDecoration(
                          color: getBackgroundBlurColors(code, dayTimes)[0]),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1, -1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.006,
                      decoration: BoxDecoration(
                          color: getBackgroundBlurColors(code, dayTimes)[0]
                              .withOpacity(0.9)),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1, -1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.006,
                      decoration: BoxDecoration(
                          color: getBackgroundBlurColors(code, dayTimes)[0]
                              .withOpacity(0.9)),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                          color: getBackgroundBlurColors(code, dayTimes)[1]),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1, 1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.54,
                      width: MediaQuery.of(context).size.width * 0.025,
                      decoration: BoxDecoration(
                          color: getBackgroundBlurColors(code, dayTimes)[1]
                              .withOpacity(0.9)),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1, 1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.54,
                      width: MediaQuery.of(context).size.width * 0.025,
                      decoration: BoxDecoration(
                          color: getBackgroundBlurColors(code, dayTimes)[1]
                              .withOpacity(0.9)),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                    ),
                  ),
                ],
              );
            },
            orElse: () => Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, -1),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.99,
                        decoration: BoxDecoration(
                            color:
                                getBackgroundBlurColors(500, DayTimes.day)[0]),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.95,
                        decoration: BoxDecoration(
                            color:
                                getBackgroundBlurColors(500, DayTimes.day)[1]),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                      child: Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                      ),
                    ),
                  ],
                ));
      },
    );
  }
}
