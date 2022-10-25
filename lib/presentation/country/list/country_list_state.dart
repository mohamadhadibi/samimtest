part of 'country_list_cubit.dart';

abstract class CountryListState extends Equatable {
  const CountryListState();
}

class StateInitial extends CountryListState {
  @override
  List<Object> get props => [];
}

class StateDataLoaded extends CountryListState {
  final List<Country> items;

  const StateDataLoaded(this.items);

  @override
  List<Object> get props => [];
}

class StateError extends CountryListState {
  final Failure failure;

  const StateError(this.failure);

  @override
  List<Object> get props => [failure];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StateError && other.failure == failure;
  }

  @override
  int get hashCode => failure.hashCode;
}
