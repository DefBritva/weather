import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/styles/styles.dart';
import 'package:weather_app/core/utils/weather_image.dart';

class WeatherForecastForThreeDays extends StatelessWidget {
  const WeatherForecastForThreeDays({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return currentWidth < 900 ? const _DefaultView() : const _BigView();
  }
}

class _DefaultView extends StatelessWidget {
  const _DefaultView();

  @override
  Widget build(BuildContext context) {
    return const _DaysWidget();
  }
}

class _BigView extends StatelessWidget {
  const _BigView();

  @override
  Widget build(BuildContext context) {
    return const UnconstrainedBox(
      child: SizedBox(
        width: 500,
        child: _DaysWidget(),
      ),
    );
  }
}

class _DaysWidget extends StatelessWidget {
  const _DaysWidget();

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final locationIndex = context.read<int>();
    final currentLocation = state.locations[locationIndex];
    final dayTimes = currentLocation.currentWeather.dayTimes;
    final weatherForecast = currentLocation.weatherForecast;
    final days = state.weekdays;

    List<Widget> getDays() {
      final items = <Widget>[];
      for (var i = 0; i < 3; i++) {
        items.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.3,
                        child: AutoSizeText(
                          days[i],
                          style: TextStyles.medium,
                          maxLines: 1,
                          minFontSize: 8,
                        ),
                      ),
                      const Spacer(),
                      Row(children: [
                        Image.asset(
                          dayImage(weatherForecast[i].code),
                          scale: 15,
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: constraints.maxWidth * 0.5,
                          child: AutoSizeText(
                            'мин: ${weatherForecast[i].min}°C, макс: ${weatherForecast[i].max}°',
                            style: TextStyles.defaultStyle,
                            maxLines: 1,
                            minFontSize: 8,
                          ),
                        ),
                      ]),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      }

      return items;
    }

    return DecoratedBox(
      decoration: BoxDecoration(
          color: dayTimes == DayTimes.day
              ? Colors.deepPurple
              : Colors.deepPurple.shade800,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: getDays(),
      ),
    );
  }
}
