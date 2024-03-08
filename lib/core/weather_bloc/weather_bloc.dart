import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:weather/core/domain/models/weather_location/weather_location.dart';
import 'package:weather/core/domain/services/weather_repos.dart';
import 'package:weather/core/utils/string.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({
    required this.weatherRepository,
  }) : super(const _Initial()) {
    on<WeatherEvent>(
      (event, emit) {
        event.whenOrNull(
          started: () {},
        );
      },
    );

    on<_GetWeather>(
      (event, emit) async {
        emit(const _Loading());

        try {
          final prefs = await SharedPreferences.getInstance();
          final locationsNames = prefs.getStringList('locations');
          final locations = <WeatherLocation>[];
          if (locationsNames != null && locationsNames.isNotEmpty) {
            for (var loc in locationsNames) {
              final coords = prefs.getString(loc) ?? '';
              final weatherLocation = await weatherRepository
                  .getWetherFromLocation(location: loc, coords: coords);
              locations.add(weatherLocation);
            }
          }

          final localWeather = await weatherRepository.getLocalWeather();

          final date = DateTime.now();
          final dayTwo = DateFormat('EE', 'ru_RU')
              .format(date.add(const Duration(days: 1)))
              .capitalize();
          final dayThree = DateFormat('EE', 'ru_RU')
              .format(date.add(const Duration(days: 2)))
              .capitalize();

          final newState = _Main(
            weekdays: ['Сегодня', dayTwo, dayThree],
            locations: [localWeather, ...locations],
            currentLocation: 0,
          );
          emit(const _LoadingSuccesful());
          emit(
            newState,
          );
        } on DioException catch (e) {
          emit(_Failure(message: e.message ?? ''));
        }
      },
    );

    on<_PrevLocation>(
      (event, emit) {
        if (state.currentLocation == 0) return;
        final current = state.currentLocation;
        final newState = state.mapOrNull(
            main: (state) => state.copyWith(
                  currentLocation: current - 1,
                ));
        if (newState != null) emit(newState);
      },
      transformer: droppable(),
    );
    on<_NextLocation>(
      (event, emit) {
        final current = state.currentLocation;
        if (state.currentLocation == state.locations.length - 1) return;
        final newState = state.mapOrNull(
            main: (state) => state.copyWith(
                  currentLocation: current + 1,
                ));
        if (newState != null) emit(newState);
      },
      transformer: droppable(),
    );
  }
}
