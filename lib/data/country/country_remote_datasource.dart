import 'package:samimtest/core/domain/country/entity/country.dart';

abstract class CountryRemoteDataSource {
  Future<List<Country>> getCountries();
}
