import 'package:dio/dio.dart';
import 'package:samimtest/core/domain/country/entity/country.dart';
import 'package:samimtest/data/country/country_remote_datasource.dart';

import '../../core/utils/failure.dart';
import 'models/country_rest_client.dart';

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final RestClient client;

  CountryRemoteDataSourceImpl(this.client);

  @override
  Future<List<Country>> getCountries() async {
    try {
      final response = await client.getCountries();
      return Future.value(mapToCountry(response));
    } on DioError catch (e) {
      throw UnknownFailure();
    } catch (e) {
    throw UnknownFailure();
    }
  }
}
