import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/widgets/background_blur_widget.dart';
import 'package:weather_app/features/weather/widgets/main/weather_location/weather_location.dart';

class WeatherList extends StatefulWidget {
  const WeatherList({
    super.key,
  });

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final scrollController = ScrollOffsetListener.create();

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final int currentIndex = context.watch<WeatherBloc>().state.currentLocation;
    final int code =
        state.locations[currentIndex].currentWeather.weatherConditionCode;
    final dayTimes = state.locations[currentIndex].currentWeather.dayTimes;
    return BlocListener<WeatherBloc, WeatherState>(
      listenWhen: (previous, current) =>
          previous.currentLocation != current.currentLocation,
      listener: (context, state) {
        itemScrollController.scrollTo(
          index: state.currentLocation,
          duration: const Duration(milliseconds: 250),
        );
      },
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => Stack(
          children: [
            BackgroundBlurWidget(
              code: code,
              dayTimes: dayTimes,
            ),
            BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                return ScrollablePositionedList.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollOffsetListener: scrollController,
                  itemScrollController: itemScrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.locations.length,
                  itemBuilder: (context, locationIndex) {
                    return Provider.value(
                      value: locationIndex,
                      child: SizedBox(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        child: const WeatherLocation(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
