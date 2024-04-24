import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/styles/styles.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/features/search/bloc/search_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => SearchWidgetState();
}

class SearchWidgetState extends State<SearchWidget> {
  final searchController = TextEditingController();

  final searchFocus = FocusNode();
  String hint = 'Поиск города';

  @override
  void initState() {
    super.initState();
    searchFocus.addListener(() {
      if (searchFocus.hasFocus) {
        hint = '';
      } else {
        hint = 'Поиск города';
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final currentLocation = state.locations[0];
    final dayTimes = currentLocation.currentWeather.dayTimes;
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: () => searchController.clear(),
        );
      },
      child: TextField(
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.deny(RegExp(r'\d')),
        ],
        onChanged: (value) {
          if (value.isEmpty) {
            context.read<SearchBloc>().add(const SearchEvent.searchCanceled());
          } else {
            context.read<SearchBloc>().add(SearchEvent.searchCity(value));
          }
        },
        focusNode: searchFocus,
        controller: searchController,
        cursorColor: Colors.white,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.text,
        style: TextStyles.default2,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            color: Colors.white,
            onPressed: () {
              setState(() {
                searchController.clear();
                context
                    .read<SearchBloc>()
                    .add(const SearchEvent.searchCanceled());
              });
            },
            icon: const Icon(Icons.clear),
          ),
          hintStyle: TextStyles.default2,
          hintText: hint,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 27,
          ),
          filled: true,
          fillColor: dayTimes == DayTimes.day ? Colors.white30 : Colors.white10,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
