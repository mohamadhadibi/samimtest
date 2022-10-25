import 'package:dartz/dartz.dart';
import 'package:samimtest/core/domain/country/entity/country.dart';
import 'package:samimtest/core/domain/country/repository/country_repository.dart';

import '../../../utils/failure.dart';
import '../../../utils/usecase.dart';

class GetCountriesUseCase implements UseCase<List<Country>, void> {
  final CountryRepository countryRepository;

  GetCountriesUseCase(this.countryRepository);

  @override
  Future<Either<Failure, List<Country>>> call(void params) async {
    return await countryRepository.getCountries(params);
  }
}
