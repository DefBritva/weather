part of 'locations_and_results.dart';

class Locations extends StatelessWidget {
  final BoxConstraints constraints;

  const Locations({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return currentWidth < 450 ? _DefaultView(currentWidth) : const _BigView();
  }
}

class _Locations extends StatelessWidget {
  const _Locations();

  @override
  Widget build(BuildContext context) {
    context.watch<WeatherBloc>().state.locations.length;

    final state = context.read<WeatherBloc>().state;
    final locations = state.locations;
    final currentWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 20),
          itemCount: locations.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Expanded(
                    flex: 3,
                    child: _Location(locations: locations, index: index)),
                if (currentWidth > 600)
                  Expanded(
                      child: Container(
                    height: 130,
                    color: Colors.black,
                  ))
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 8)),
        );
      },
    );
  }
}

class _Location extends StatelessWidget {
  const _Location({
    required this.locations,
    required this.index,
  });
  final List<WeatherLocation> locations;
  final int index;

  @override
  Widget build(BuildContext context) {
    context.watch<WeatherBloc>().state.locations.length;
    final state = context.read<WeatherBloc>().state;

    final currentLocation = state.locations[0];
    final dayTimes = currentLocation.currentWeather.dayTimes;
    final color = dayTimes == DayTimes.day ? Colors.white30 : Colors.white10;
    final location = locations[index].location;
    final description = locations[index].currentWeather.description;
    final temp = locations[index].currentWeather.temp;
    final min = locations[index].weatherForecast[0].min;
    final max = locations[index].weatherForecast[0].max;
    final time = locations[index].localTime;
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        context.read<WeatherBloc>().add(WeatherEvent.openWeather(index: index));
      },
      child: Slidable(
        endActionPane: index != 0
            ? ActionPane(
                extentRatio: 1,
                motion: const StretchMotion(),
                children: [
                    const Flexible(child: SizedBox(width: 8)),
                    SlidableAction(
                      flex: 10,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      backgroundColor: Colors.red,
                      label: 'Удалить',
                      icon: Icons.delete,
                      onPressed: (context) {
                        context
                            .read<WeatherBloc>()
                            .add(WeatherEvent.removeLocation(index));
                      },
                    )
                  ])
            : null,
        child: Container(
          height: 130,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: color),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index == 0
                          ? const AutoSizeText(
                              maxLines: 1,
                              'Текущее место',
                              style: TextStyles.large,
                              minFontSize: 8,
                            )
                          : None,
                      AutoSizeText(
                        maxLines: 1,
                        location,
                        style: index == 0
                            ? TextStyles.defaultStyle
                            : TextStyles.large,
                        minFontSize: 8,
                      ),
                      if (index != 0)
                        AutoSizeText(
                          time,
                          maxLines: 1,
                          style: TextStyles.defaultStyle.copyWith(fontSize: 16),
                          minFontSize: 8,
                        ),
                      const Spacer(),
                      LayoutBuilder(builder: (context, constraints) {
                        return SizedBox(
                          width: constraints.maxWidth * 0.9,
                          child: AutoSizeText.rich(
                            maxLines: 2,
                            TextSpan(
                              text: description,
                              style: TextStyles.defaultStyle,
                            ),
                            minFontSize: 8,
                          ),
                        );
                      })
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        '$temp°',
                        style: TextStyles.large2,
                      ),
                      const Spacer(),
                      AutoSizeText(
                        'Мин: $min°, макс: $max°',
                        style: TextStyles.defaultStyle,
                        minFontSize: 8,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class _DefaultView extends StatelessWidget {
  final double currentWidth;

  const _DefaultView(this.currentWidth);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: currentWidth, child: const _Locations());
  }
}

class _BigView extends StatelessWidget {
  const _BigView();

  @override
  Widget build(BuildContext context) {
    context.watch<WeatherBloc>().state.locations.length;
    final state = context.read<WeatherBloc>().state;
    final locations = state.locations;
    final currentWidth = MediaQuery.of(context).size.width;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      itemCount: locations.length,
      itemBuilder: (BuildContext context, int index) {
        final isDay = locations[index].currentWeather.dayTimes == DayTimes.day;
        final code = locations[index].currentWeather.weatherConditionCode;
        final astro = state.locations[index].astroWeather;
        final feelslike = locations[index].currentWeather.feelslike;
        final details = <Widget>[
          SizedBox(
            width: 130,
            height: 130,
            child: Lottie.asset(
              isDay ? dayAnimation(code) : nightAnimation(code),
            ),
          ),
          const SizedBox(width: 32),
          SizedBox(
            width: 200,
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.sunrise,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: 'Восход солнца',
                        ),
                        minFontSize: 8,
                        maxLines: 1,
                        style: TextStyles.default2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    astro.sunrise,
                    style: TextStyles.default2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          SizedBox(
            width: 200,
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.sunset_,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: 'Закат солнца',
                        ),
                        minFontSize: 8,
                        maxLines: 1,
                        style: TextStyles.default2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    astro.sunset,
                    style: TextStyles.default2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          SizedBox(
            width: 200,
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.thermometer,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: 'Ощущается как',
                        ),
                        minFontSize: 8,
                        maxLines: 1,
                        style: TextStyles.default2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    '$feelslike°',
                    style: TextStyles.default2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          SizedBox(
            width: 200,
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.wind,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Скорость ветра',
                            minFontSize: 8,
                            maxLines: 1,
                            style: TextStyles.default2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: AutoSizeText(
                    '${locations[index].currentWeather.windMps} м/c',
                    style: TextStyles.default2,
                    minFontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ];

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                width: 380,
                child: _Location(locations: locations, index: index)),
            if (currentWidth > 600)
              Expanded(
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: details.length,
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        details[index],
                  ),
                ),
              )
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 8),
        // child: Divider(),
      ),
    );
  }
}
