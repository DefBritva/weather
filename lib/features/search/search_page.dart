import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/features/search/widgets/search_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final currentLocation = state.locations[0];
    final dayTimes = currentLocation.currentWeather.dayTimes;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: dayTimes == DayTimes.day ? Colors.white : Colors.black,
        body: const SafeArea(child: SearchBody()),
      ),
    );
  }
}
