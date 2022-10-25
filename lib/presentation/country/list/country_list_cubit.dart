import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/country/entity/country.dart';
import '../../../core/domain/country/usecase/get_countries_usecase.dart';
import '../../../core/utils/failure.dart';

part 'country_list_state.dart';

class CountryListCubit extends Cubit<CountryListState> {
  final GetCountriesUseCase _getCountriesUseCase;

  CountryListCubit(this._getCountriesUseCase) : super(StateInitial());

  getCountries() async {
    final result = await _getCountriesUseCase.call(null);
    result.fold(
          (failure) => emit(StateError(failure)),
          (countries) => emit(StateDataLoaded(countries)),
    );
  }
}
