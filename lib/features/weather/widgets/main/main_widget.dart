import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/routing/navigation.dart';
import 'package:weather_app/features/weather/widgets/main/weather_list.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.dayTime,
  });

  final DayTimes? dayTime;

  @override
  Widget build(BuildContext context) {
    List<Widget> getRowItems(int count, int current) {
      final items = <Widget>[];

      const space = SizedBox(width: 10);

      for (var i = 0; i < count; i++) {
        final icon = Icon(
          Icons.location_on_sharp,
          size: 15,
          color: i == current ? Colors.white : Colors.white.withOpacity(0.45),
        );
        final circle = Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: i == current ? Colors.white : Colors.white.withOpacity(0.45),
            shape: BoxShape.circle,
          ),
        );
        if (i == 0) {
          items.add(icon);
          items.add(space);
          continue;
        }
        if (i == count - 1) {
          items.add(circle);
          break;
        }
        items.add(circle);
        items.add(space);
      }
      return items;
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: dayTime == DayTimes.day ? Colors.white : Colors.black,
        body: const SafeArea(child: WeatherList()),
        bottomNavigationBar: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            final count = state.locations.length;
            final current = state.currentLocation;

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: dayTime == DayTimes.day
                    ? Colors.deepPurple
                    : Colors.deepPurple.shade800,
                border: Border(
                  top: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.map,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: getRowItems(count, current),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        AppNavigation.goSearch(context);
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
