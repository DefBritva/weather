part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _Started;
  const factory SearchEvent.searchCity(String name) = _SearchCity;
  const factory SearchEvent.searchCanceled() = _SearchCanceled;
}
