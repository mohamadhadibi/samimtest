import 'package:dartz/dartz.dart';
import 'package:samimtest/core/domain/country/entity/country.dart';

import '../../../utils/failure.dart';

abstract class CountryRepository {
  Future<Either<Failure, List<Country>>> getCountries(void params);
}