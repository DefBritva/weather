import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather_app/core/utils/connection_checker.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/features/weather/widgets/background_blur_widget.dart';

class FailureWidget extends StatefulWidget {
  final String message;
  const FailureWidget(
    this.message, {
    super.key,
  });

  @override
  State<FailureWidget> createState() => _FailureWidgetState();
}

class _FailureWidgetState extends State<FailureWidget> {
  var loading = false;
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.message == 'No internet connection')
                    const Icon(
                      Icons.signal_wifi_connected_no_internet_4,
                      size: 32,
                    ),
                  Text('Error. ${widget.message}'),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: 125,
                    child: ElevatedButton(
                        onPressed: () async {
                          if (!ConnectionStatusSingleton.getInstance()
                              .hasConnection) {
                            setState(() {
                              loading = true;
                            });

                            await Future.delayed(const Duration(seconds: 5));
                            setState(() {
                              loading = false;
                            });
                          } else {
                            context.read<WeatherBloc>().add(
                                  const WeatherEvent.getWeather(),
                                );
                          }
                        },
                        child: loading
                            ? LoadingAnimationWidget.inkDrop(
                                color: Colors.black, size: 15)
                            : const Text('try again')),
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
