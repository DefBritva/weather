import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/features/weather/widgets/background_blur_widget.dart';

class FailureWidget extends StatelessWidget {
  final String message;
  const FailureWidget(
    this.message, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackgroundBlurWidget(
              code: 500,
              dayTimes: DayTimes.day,
            ),
            Center(
              child: Column(
                children: [
                  Text('Error. $message'),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      context.read<WeatherBloc>().add(
                            const WeatherEvent.getWeather(),
                          );
                    },
                    child: const Text('try again'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
