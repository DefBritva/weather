part of 'locations_and_results.dart';

class ResultsWidget extends StatelessWidget {
  final List<String> results;
  const ResultsWidget(
    this.results, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<SearchBloc>();
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Добавление локации'),
                  content: Text(
                    'Вы действительно хотите добавить локацию ${results[index]}?',
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          context.read<WeatherBloc>().add(
                                WeatherEvent.addLocation(
                                  results[index],
                                ),
                              );
                          searchBloc.add(const SearchEvent.searchCanceled());

                          Navigator.pop(context);
                        },
                        child: const Text('Да')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Нет')),
                  ],
                );
              },
            );
          },
          child: Text(results[index], style: TextStyles.default2),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
      itemCount: results.length,
    );
  }
}
