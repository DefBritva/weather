import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/widgets/main/weather_location/weather_location.dart';
import 'package:weather_app/resources/resources.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return currentWidth < 900 ? const _DefaultView() : const _BigView();
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final locationIndex = context.read<int>();
    final currentLocation = state.locations[locationIndex];
    final dayTimes = currentLocation.currentWeather.dayTimes;
    final currentWidth = MediaQuery.of(context).size.width;
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: currentWidth < 600 ? 8 : 20,
        crossAxisSpacing: currentWidth < 600 ? 8 : 20,
        crossAxisCount: 2,
      ),
      children: [
        SunriceAndSunsetWidget(dayTimes: dayTimes),
        FeelsLikeWidget(dayTimes: dayTimes),
        GridElement(
          imageSource: Images.show,
          dayTimes: dayTimes,
          text: 'Видимость',
          value: '${currentLocation.currentWeather.visibilityKm} км',
        ),
        GridElement(
          imageSource: Images.humidity,
          dayTimes: dayTimes,
          text: 'Влажность',
          value: '${currentLocation.currentWeather.humidity}%',
          description:
              'Точка росы\nсейчас:  ${currentLocation.tempModel.dewPoint}°',
        )
      ],
    );
  }
}

class _BigView extends StatelessWidget {
  const _BigView();

  @override
  Widget build(BuildContext context) {
    return const UnconstrainedBox(
      child: SizedBox(
        width: 500,
        child: DetailsWidget(),
      ),
    );
  }
}

class _DefaultView extends StatelessWidget {
  const _DefaultView();

  @override
  Widget build(BuildContext context) {
    return const DetailsWidget();
  }
}
