import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:weather_app/core/utils/user_settings.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/widgets/none.dart';
import 'package:weather_app/features/weather/widgets/failure_widget.dart';
import 'package:weather_app/features/weather/widgets/main/main_widget.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      UserSettings.setUserSize(context);
    });
    context.read<WeatherBloc>().add(const WeatherEvent.getWeather());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: BlocConsumer<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return state.whenOrNull(
                main: (weather, _, current) {
                  final dayTime = weather[current].currentWeather.dayTimes;
                  return MainWidget(dayTime: dayTime);
                },
                failure: (String message) => FailureWidget(message),
              ) ??
              None;
        },
        listener: (BuildContext context, WeatherState state) {
          state.whenOrNull(
            loadingSuccesful: () => FlutterNativeSplash.remove(),
          );
        },
      ),
    );
  }
}
