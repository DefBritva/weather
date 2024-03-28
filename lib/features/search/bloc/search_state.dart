part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.start() = _Start;
  const factory SearchState.loading() = _loading;
  const factory SearchState.received({required List<String> results}) =
      _Received;
  const factory SearchState.failure() = _Failure;
}
