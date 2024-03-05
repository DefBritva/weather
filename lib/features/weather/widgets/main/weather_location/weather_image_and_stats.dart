import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/utils/weather_image.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/styles/styles.dart';
import 'package:weather_app/resources/resources.dart';

class WeatherImageAndStats extends StatelessWidget {
  const WeatherImageAndStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final locationIndex = context.read<int>();
    final currentLocation = state.locations[locationIndex];

    final currentWeather = currentLocation.currentWeather;
    final forecast = currentLocation.weatherForecast[0];
    final isDay = currentWeather.dayTimes == DayTimes.day;
    final code = currentWeather.weatherConditionCode;
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          const Spacer(),
          SizedBox(
            child: Lottie.asset(
                isDay ? dayAnimation(code) : nightAnimation(code),
                width: constraints.maxWidth * 1,
                height: constraints.maxHeight * 0.5),
          ),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  currentLocation.location,
                  style: TextStyles.large,
                ),
                const SizedBox(height: 10),
                AutoSizeText(
                  '${currentWeather.temp}°C',
                  style: TextStyles.large,
                ),
                const SizedBox(height: 10),
                AutoSizeText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  currentWeather.description,
                  style: TextStyles.medium,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.temperature8722352,
                      scale: 15,
                    ),
                    const SizedBox(width: 10),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'мин: ${forecast.min}°C, макс: ${forecast.max}°C',
                        style: TextStyles.defaultStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(flex: 4),
        ],
      );
    });
  }
}
