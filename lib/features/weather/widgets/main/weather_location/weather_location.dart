import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/styles/styles.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/utils/gest.dart';
import 'package:weather_app/features/weather/widgets/main/weather_location/hourly_weather_widget.dart';
import 'package:weather_app/features/weather/widgets/main/weather_location/weather_details.dart';
import 'package:weather_app/features/weather/widgets/main/weather_location/weather_forecast_three_days.dart';
import 'package:weather_app/features/weather/widgets/main/weather_location/weather_image_and_stats.dart';
import 'package:weather_app/resources/resources.dart';

class WeatherLocation extends StatelessWidget {
  const WeatherLocation({super.key});

  EdgeInsetsGeometry _buildInsets(
    BuildContext context, {
    required double insets,
  }) {
    final currentWidth = MediaQuery.of(context).size.width;
    if (currentWidth < 600) {
      return const EdgeInsets.symmetric(horizontal: 16);
    }
    if (currentWidth > 900) {
      return const EdgeInsets.symmetric(horizontal: 0);
    } else {
      return EdgeInsets.symmetric(horizontal: insets);
    }
  }

  @override
  Widget build(BuildContext context) {
    void onHorizontalDragEnd(DragEndDetails details) {
      if (details.primaryVelocity != null) {
        if (details.primaryVelocity! < 0) {
          context.read<WeatherBloc>().add(const WeatherEvent.nextLocation());
        } else if (details.primaryVelocity! > 0) {
          context.read<WeatherBloc>().add(const WeatherEvent.prevLocation());
        }
      }
    }

    final locationIndex = context.read<int>();
    final currentWidth = MediaQuery.of(context).size.width;

    return DelayedDisplay(
      fadingDuration: locationIndex == 0
          ? const Duration(milliseconds: 1500)
          : const Duration(milliseconds: 0),
      slidingBeginOffset: const Offset(0, -1),
      fadeIn: true,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RawGestureDetector(
                    behavior: HitTestBehavior.translucent,
                    gestures: {
                      AllowMultipleHorizontalDragGestureRecognizer:
                          GestureRecognizerFactoryWithHandlers<
                              AllowMultipleHorizontalDragGestureRecognizer>(
                        () => AllowMultipleHorizontalDragGestureRecognizer(),
                        (AllowMultipleHorizontalDragGestureRecognizer
                            instance) {
                          instance.onEnd = onHorizontalDragEnd;
                        },
                      )
                    },
                    child: SizedBox(
                      height: constraints.maxHeight * 0.85,
                      width: constraints.maxWidth,
                      child: const WeatherImageAndStats(),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: _buildInsets(context,
                      insets: MediaQuery.of(context).size.width / 5),
                  child: SizedBox(
                    height: constraints.maxHeight * 0.14,
                    child: HourlyWeatherWidget(
                      size: constraints.maxHeight * 0.14,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: currentWidth < 600 ? 8 : 20),
                sliver: SliverToBoxAdapter(
                  child: RawGestureDetector(
                    behavior: HitTestBehavior.translucent,
                    gestures: {
                      AllowMultipleHorizontalDragGestureRecognizer:
                          GestureRecognizerFactoryWithHandlers<
                              AllowMultipleHorizontalDragGestureRecognizer>(
                        () => AllowMultipleHorizontalDragGestureRecognizer(),
                        (AllowMultipleHorizontalDragGestureRecognizer
                            instance) {
                          instance.onEnd = onHorizontalDragEnd;
                        },
                      )
                    },
                    child: Padding(
                      padding: MediaQuery.of(context).size.width < 900
                          ? _buildInsets(
                              context,
                              insets: MediaQuery.of(context).size.width / 5,
                            )
                          : const EdgeInsets.all(0),
                      child: const WeatherForecastForThreeDays(),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                    top: currentWidth < 600 ? 8 : 20,
                    bottom: currentWidth < 600 ? 8 : 20),
                sliver: SliverToBoxAdapter(
                  child: RawGestureDetector(
                    behavior: HitTestBehavior.translucent,
                    gestures: {
                      AllowMultipleHorizontalDragGestureRecognizer:
                          GestureRecognizerFactoryWithHandlers<
                              AllowMultipleHorizontalDragGestureRecognizer>(
                        () => AllowMultipleHorizontalDragGestureRecognizer(),
                        (AllowMultipleHorizontalDragGestureRecognizer
                            instance) {
                          instance.onEnd = onHorizontalDragEnd;
                        },
                      )
                    },
                    child: Padding(
                      padding: MediaQuery.of(context).size.width < 900
                          ? _buildInsets(
                              context,
                              insets: MediaQuery.of(context).size.width / 5,
                            )
                          : const EdgeInsets.all(0),
                      child: const WeatherDetails(),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class GridElement extends StatelessWidget {
  const GridElement({
    super.key,
    required this.dayTimes,
    required this.imageSource,
    required this.text,
    required this.value,
    this.description,
  });

  final DayTimes dayTimes;
  final String imageSource;
  final String text;
  final String value;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: dayTimes == DayTimes.day
            ? Colors.deepPurple
            : Colors.deepPurple.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    imageSource,
                    width: constraints.maxWidth * 0.25,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AutoSizeText.rich(
                      TextSpan(
                        text: text,
                      ),
                      minFontSize: 8,
                      maxLines: 1,
                      style: TextStyles.default2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(value, style: TextStyles.large),
              const Spacer(),
              if (description != null)
                AutoSizeText(
                  description!,
                  style: TextStyles.default2,
                  minFontSize: 8,
                  maxLines: 2,
                )
            ],
          );
        }),
      ),
    );
  }
}

class FeelsLikeWidget extends StatelessWidget {
  const FeelsLikeWidget({
    super.key,
    required this.dayTimes,
  });

  final DayTimes dayTimes;

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final locationIndex = context.read<int>();
    final currentLocation = state.locations[locationIndex];
    final feelslike = currentLocation.currentWeather.feelslike;
    final dayTimes = currentLocation.currentWeather.dayTimes;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: dayTimes == DayTimes.day
            ? Colors.deepPurple
            : Colors.deepPurple.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.thermometer,
                      width: constraints.maxWidth * 0.2,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: 'Ощущается как',
                        ),
                        minFontSize: 8,
                        maxLines: 1,
                        style: TextStyles.default2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '$feelslike°',
                  style: TextStyles.default2,
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset(
                      Images.wind,
                      width: constraints.maxWidth * 0.2,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Скорость ветра',
                            minFontSize: 8,
                            maxLines: 1,
                            style: TextStyles.default2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                AutoSizeText(
                  '${currentLocation.currentWeather.windMps} м/c',
                  style: TextStyles.default2,
                  minFontSize: 8,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SunriceAndSunsetWidget extends StatelessWidget {
  const SunriceAndSunsetWidget({
    super.key,
    required this.dayTimes,
  });

  final DayTimes dayTimes;

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final locationIndex = context.read<int>();
    final astro = state.locations[locationIndex].astroWeather;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: dayTimes == DayTimes.day
            ? Colors.deepPurple
            : Colors.deepPurple.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    Images.sunrise,
                    width: constraints.maxWidth * 0.25,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: AutoSizeText.rich(
                      TextSpan(
                        text: 'Восход солнца',
                      ),
                      minFontSize: 8,
                      maxLines: 1,
                      style: TextStyles.default2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                astro.sunrise,
                style: TextStyles.default2,
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    Images.sunset_,
                    width: constraints.maxWidth * 0.25,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: AutoSizeText.rich(
                      TextSpan(
                        text: 'Закат солнца',
                      ),
                      minFontSize: 8,
                      maxLines: 1,
                      style: TextStyles.default2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                astro.sunset,
                style: TextStyles.default2,
              ),
            ],
          );
        }),
      ),
    );
  }
}



// class HourltWearherWidget2 extends StatelessWidget {
//   const HourltWearherWidget2({
//     super.key,
//     required this.height,
//   });

//   final double height;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//           color: Colors.deepPurple,
//           borderRadius: BorderRadius.circular(16),
//           ),
//       child: HourlyWeatherWidget(
//         size: height * 0.14,
//       ),
//     );
//   }
// }


