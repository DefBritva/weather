import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/weather_image.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/domain/models/weather_hourly/weather_hourly.dart';
import 'package:weather_app/core/styles/styles.dart';

class HourlyWeatherWidget extends StatelessWidget {
  final double size;
  const HourlyWeatherWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return currentWidth < 900 ? _DefaultView(size) : _BigView(size);
  }
}

class _HourlyWeatherWidget extends StatelessWidget {
  final double size;
  const _HourlyWeatherWidget({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final locationIndex = context.read<int>();
    final currentLocation = state.locations[locationIndex];
    final dayTimes = currentLocation.currentWeather.dayTimes;
    final HourlyTempModel tempModel = currentLocation.tempModel;
    final List<int> temp = tempModel.tempList;
    final List<int> codes = tempModel.codeList;
    final List<bool> isDayList = tempModel.isDay;
    final List<String> timeList = tempModel.timeList.sublist(0);

    var list = <Widget>[];
    for (var i = 0; i < temp.length; i++) {
      final image = (isDayList[i])
          ? dayImage(codes[i])
          : nightImage(
              codes[i],
            );
      list.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                timeList[i],
                textAlign: TextAlign.center,
                style: TextStyles.defaultStyle,
              ),
            ),
            SizedBox(
              child: Image.asset(
                height: size / 3,
                width: size / 3,
                image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                '${temp[i]}°C',
                style: TextStyles.defaultStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ));
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        color: dayTimes == DayTimes.day
            ? Colors.deepPurple
            : Colors.deepPurple.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          itemCount: temp.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final image = (isDayList[index])
                ? dayImage(codes[index])
                : nightImage(
                    codes[index],
                  );
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      timeList[index],
                      textAlign: TextAlign.center,
                      style: TextStyles.defaultStyle,
                    ),
                  ),
                  SizedBox(
                    child: Image.asset(
                      height: size / 3,
                      width: size / 3,
                      image,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      '${temp[index]}°C',
                      style: TextStyles.defaultStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BigView extends StatelessWidget {
  final double size;
  const _BigView(this.size);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        height: size,
        child: _HourlyWeatherWidget(size: size),
      ),
    );
  }
}

class _DefaultView extends StatelessWidget {
  final double size;
  const _DefaultView(this.size);

  @override
  Widget build(BuildContext context) {
    return _HourlyWeatherWidget(
      size: size,
    );
  }
}
