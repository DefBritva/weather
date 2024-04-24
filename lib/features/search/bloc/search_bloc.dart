import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/domain/services/city_search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CitySearch citySearch;
  SearchBloc({required this.citySearch}) : super(const _Initial()) {
    on<_SearchCity>(
      (event, emit) async {
        final results = await citySearch.search(event.name);
        emit(_Received(results: results));
      },
      transformer: restartable(),
    );

    on<_SearchCanceled>((event, emit) {
      emit(const _Initial());
    });
  }
}
