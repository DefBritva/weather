import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/domain/models/weather_location/weather_location.dart';
import 'package:weather_app/core/styles/styles.dart';
import 'package:weather_app/core/utils/weather_image.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/widgets/none.dart';
import 'package:weather_app/features/search/bloc/search_bloc.dart';
import 'package:weather_app/resources/resources.dart';

part 'locations.dart';
part 'results.dart';

class LocationsAndResults extends StatelessWidget {
  const LocationsAndResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: 32,
        right: currentWidth < 600 ? 32 : 0,
        top: 16,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.whenOrNull(
                    initial: () => Locations(
                      constraints: constraints,
                    ),
                    received: (results) => ResultsWidget(
                      results,
                    ),
                  ) ??
                  None;
            },
          );
        },
      ),
    );
  }
}
