import 'package:dartz/dartz.dart';
import 'package:samimtest/core/domain/country/entity/country.dart';
import 'package:samimtest/core/domain/country/repository/country_repository.dart';
import 'package:samimtest/core/utils/failure.dart';
import 'package:samimtest/data/country/country_remote_datasource.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryRemoteDataSource _countryRemoteDataSource;

  CountryRepositoryImpl(this._countryRemoteDataSource);

  @override
  Future<Either<Failure, List<Country>>> getCountries(void params) async {
    try {
      final response = await _countryRemoteDataSource.getCountries();
      return Right(response);
    } catch (e) {
      return Left(e is Failure ? e : UnknownFailure());
    }
  }
}
